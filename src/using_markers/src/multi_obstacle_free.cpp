/* Cooperating Robotics via D* --Zejian Zhou, Github: JayZejianZhou
  I set a 20x20 map,
   robot scale is 1x1,
   Jay starts at (0,0), goal is (20,20)
   Stella starts at (20,0), goal is (0,20)
*/

#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <std_msgs/Int32.h>
#include <iostream>

visualization_msgs::Marker obstacle1,obstacle2,jay,stella, jay_goal, stella_goal;
visualization_msgs::Marker jay_path, stella_path
,fake_CD1,fake_CD2;

enum State{NEW,OPEN,CLOSE};//state of every nood
//enum Dirction{NORTH,NORTH_EAST,EAST,EAST_SOUTH,SOUTH,SOUTH_WEST,WEST,WEST_NORTH};

class Node{//every state
private:
    State state;
    int k;//cost to Goal position,10,14
    Node * previous;//double linked list node;
    int x;
    int y;//position
    bool is_path;//test if it's part of path..debug need
public:
    int step_mark;//simulated time, used for collision check, CHINESE(Mei shi jian le, Kuai shang che!!)
public:
    Node():state(NEW),k(0),previous(0),x(0),y(0),is_path(false){}
    Node(int t_x,int t_y):state(NEW),k(0),previous(0),is_path(false){}
    State get_state(){ return state;}
    void set_state(State s){state=s;}
    double get_k(){return k;}
    void set_k(double t_k){k=t_k;}
    int get_x(){return x;}
    int get_y(){return y;}
    void set_x(int t_x){x=t_x;}
    void set_y(int t_y){y=t_y;}
    void set_previous(Node * p){previous=p;}
    Node * get_previous(){return previous;}
    void set_is_path(bool t_is_path){is_path=t_is_path;}
    bool get_is_path(){return is_path;}
};

class List{//grow array OPEN and CLOSE list
private:
    //List variables
    int used;
    Node ** data;//dynamic array of pointers to Nodes
    int capacity;
public:
    //List constructor & destructor
    List():used(0),data(new Node*[used]),capacity(1){}
    ~List(){
        delete [] data;
    }

    //List methods
    int get_used(){
        return used;
    }

    Node ** get_data(){return data;}

    void sort(){//simple sort
        for (int i=0;i<used;i++){
            for (int j=i;j<used;j++){
                if(data[i]->get_k()>data[j]->get_k()){
                    Node * temp;
                    temp=data[i];
                    data[i]=data[j];
                    data[j]=temp;
                }
            }
        }
    }
    void grow(){
        Node ** temp=new Node*[capacity*2];
        for(int i=0;i<used;i++)
            temp[i]=data[i];
        delete [] data;
        data=temp;
        capacity=capacity*2;
    }

    void insert(Node * n){//pass the pointer,only open can insert
        //n.get_state()=OPEN;
        data[used]=n;
        used++;
        if(used>=capacity) grow();
        n->set_state(OPEN);
    }
    void insert(Node * n,int t_k){//pass the pointer
        //n.get_state()=OPEN;
        data[used]=n;
        n->set_k(t_k);
        used++;
        if(used>=capacity) grow();
        n->set_state(OPEN);
        sort();
    }
    void destack(){
        data[0]->set_state(CLOSE);
        for(int i=1;i<used;i++){
            data[i-1]=data[i];
        }
        used--;

    }
    Node * min_state(){
        sort();
        return data[0];
    }
    int get_kmin(){
        sort();
        return data[0]->get_k();
    }
    bool is_inlist(Node & n){
        for (int i=0;i<used;i++){
            if(n.get_x()==data[i]->get_x()){
                if(n.get_y()==data[i]->get_y())
                    return true;
            }
        }
        return false;
    }
};

class Map{
private:
    //Map variables
    List open_list;
public:
    int map_width;
    int map_length;
    int goal_x;
    int goal_y;
    int start_x;
    int start_y;
    Node  nodes[21][21];
public:
    //Map constructor
    //Map(){}//empty instance is not allowed
    Map(int t_map_width, int t_map_length, int t_goal_x, int t_goal_y, int t_start_x, int t_start_y):
      start_x(t_start_x),start_y(t_start_y),map_width(t_map_width),map_length(t_map_length),goal_x(t_goal_x),goal_y(t_goal_y){
        for(int i=0;i<map_width;i++)
            for(int j=0;j<map_length;j++){
                nodes[i][j].set_x(i);//initiate nodes array
                nodes[i][j].set_y(j);
            }
    }

    //Map methods
    Node * expand(int direction,Node * n){//if no neighbour in one direction, return goal..NORTH,NORTH_EAST,EAST,EAST_SOUTH,SOUTH,SOUTH_WEST,WEST,WEST_NORTH
        switch(direction){
        case 0:
            if(n->get_y()+1>=map_width)
                return &nodes[goal_x][goal_y];
            else
                return &nodes[n->get_x()][n->get_y()+1];
            break;
        case 1:
            if(n->get_y()+1>=map_width || n->get_x()+1>=map_length)
                return &nodes[goal_x][goal_y];
            else
                return &nodes[n->get_x()+1][n->get_y()+1];
            break;
        case 2:
            if(n->get_x()+1>=map_length)
                return &nodes[goal_x][goal_y];
            else
                return &nodes[n->get_x()+1][n->get_y()];
            break;
        case 3:
            if(n->get_y()-1<0 || n->get_x()+1>=map_length)
                return &nodes[goal_x][goal_y];
            else
                return &nodes[n->get_x()+1][n->get_y()-1];
            break;
        case 4:
            if(n->get_y()-1<0)
                return &nodes[goal_x][goal_y];
            else
                return &nodes[n->get_x()][n->get_y()-1];
            break;
        case 5:
            if(n->get_y()-1<0 || n->get_x()-1<0)
                return &nodes[goal_x][goal_y];
            else
                return &nodes[n->get_x()-1][n->get_y()-1];
            break;
        case 6:
            if(n->get_x()-1<0)
                return &nodes[goal_x][goal_y];
            else
                return &nodes[n->get_x()-1][n->get_y()];
            break;
        case 7:
            if(n->get_y()+1>=map_length || n->get_x()-1<0)
                return &nodes[goal_x][goal_y];
            else
                return &nodes[n->get_x()-1][n->get_y()+1];
            break;
        }
    }

    int arc(Node * n1, Node * n2){
        if(n1->get_k()>=99999 || n2->get_k()>=99999)//obstacle
            return 99999;
        if(n1->get_x()==n2->get_x() && n1->get_y()==n2->get_y())
            return 0;
        else if(n1->get_x()-n2->get_x()!=0 && n1->get_y()-n2->get_y()!=0)
            return 14;
        else
            return 10;
    }

    int process_state(){
        if(open_list.get_used()==0)  return -1;//Nothing in open list anymore
        int kold = open_list.get_kmin();
        open_list.destack();
        //get the first element in open list
        Node * node_x= open_list.get_data()[0];
        //still don't know why doing this
        if(kold<node_x->get_k()){//still don't know why to do this
            for (int i=0;i<8;i++){
                Node *node_y= expand(i,open_list.get_data()[0]);
                if(node_y!=&nodes[goal_x][goal_y]){//node_y exsit?
                    if(node_y->get_k()<=kold
                            && (node_x->get_k()>(node_y->get_k()+arc(node_x,node_y)))
                            && node_y->get_state()!=NEW)
                    {
                        node_y->set_previous(node_x);
                        node_x->set_k(node_y->get_k()+arc(node_x,node_y));
                    }
                }
            }
        }
        //lower state
        if(kold==node_x->get_k()){
            for (int i=0;i<8;i++){
                Node *node_y= expand(i,open_list.get_data()[0]);
                if(node_y!=&nodes[goal_x][goal_y]){
                    if(node_y->get_state()==NEW
                            || (node_y->get_previous()==node_x && node_y->get_k()!=node_x->get_k()+arc(node_x,node_y))
                            || (node_y->get_previous()!=node_x && node_y->get_k() >node_x->get_k()+arc(node_x,node_y)))
                    {
                        node_y->set_previous(node_x);
                        open_list.insert(node_y,node_x->get_k()+arc(node_x,node_y));
                    }
                }
            }
        }
        //raise state
        else{
            for (int i=0;i<8;i++){
                Node *node_y= expand(i,open_list.get_data()[0]);
                if(node_y!=&nodes[goal_x][goal_y]){
                    if(node_y->get_state()==NEW
                            || (node_y->get_previous()==node_x && node_y->get_k() != node_x->get_k()+arc(node_x,node_y)))
                    {
                        node_y->set_previous(node_x);
                        open_list.insert(node_y,node_x->get_k()+arc(node_x,node_y));
                    }
                    else{
                        if(node_y->get_previous()!=node_x
                                && node_y->get_k()>node_x->get_k()+arc(node_x,node_y)){
                            open_list.insert(node_x,node_x->get_k());
                        }
                        else{
                            if(node_y->get_previous()!=node_x
                                    && node_x->get_k()>node_y->get_k()+arc(node_x,node_y)
                                    && node_y->get_state()==CLOSE
                                    && node_y->get_k()>kold){
                                open_list.insert(node_y,node_y->get_k());
                            }
                        }
                    }
                }
            }
        }
    }



    void find_path(int f_start_x, int f_start_y){
        //1st step: put goal in open_list
        open_list.insert(&nodes[goal_x][goal_y],0);
        //2nd step: put his neighbours in open_list
        for(int i=0;i<8;i++){
            Node * temp=expand(i,open_list.get_data()[0]);
            if(temp!=&nodes[goal_x][goal_y]){
                temp->set_previous(&nodes[goal_x][goal_y]);
                open_list.insert(temp);
            }
        }
        //set first elements in open list
        if(goal_x+1 < map_length){
            nodes[goal_x+1][goal_y].set_k(10);
            if(goal_y+1 < map_width)
                nodes[goal_x+1][goal_y+1].set_k(14);
            if(goal_y-1 >= 0 )
                nodes[goal_x+1][goal_y-1].set_k(14);
        }
       if(goal_x-1>=0){
            nodes[goal_x-1][goal_y].set_k(10);
            if(goal_y+1 < map_width)
                nodes[goal_x-1][goal_y+1].set_k(14);
            if(goal_y-1 >= 0 )
                nodes[goal_x-1][goal_y-1].set_k(14);
        }
        if(goal_y-1>=0)
            nodes[goal_x][goal_y-1].set_k(10);
        if(goal_y+1<map_width)
            nodes[goal_x][goal_y+1].set_k(10);
        open_list.sort();
        while(true){
            if(process_state()==-1 || nodes[f_start_x][f_start_y].get_state()==CLOSE)
                break;
        }
        //find_path--------------------------------------
        Node* temp=&nodes[0][0];
        temp->set_is_path(true);
        while(temp!=&nodes[goal_x][goal_y]){
            temp=temp->get_previous();
            temp->set_is_path(true);
        }
    }
    void set_obstacle(int x, int y){
      nodes[x][y].set_k(99999);
    }
};

void map_init(){
  //make a simulated robot, jay_goal point, stella_goal point

  jay.header.frame_id=stella.header.frame_id=stella_goal.header.frame_id=jay_goal.header.frame_id="/map";
  jay.header.stamp=stella.header.stamp=jay_goal.header.stamp=stella_goal.header.stamp=ros::Time::now();
  jay.ns="jay";
  jay.id=0;
  stella.ns="stella";
  stella.id=1;
  jay_goal.ns="jay_goal_point";
  jay_goal.id=2;
  stella_goal.ns="stella_goal_point";
  stella_goal.id=3;
  jay.action=jay_goal.action=stella.action=stella_goal.action=visualization_msgs::Marker::ADD;
  jay.type=jay_goal.type=stella.type=stella_goal.type=visualization_msgs::Marker::CUBE;

  //jay_goal point cube structure,jay_goal at (20,20)
  jay_goal.pose.position.x=20;
  jay_goal.pose.position.y=20;
  jay_goal.pose.position.z=2;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  jay_goal.pose.orientation.x=0;
  jay_goal.pose.orientation.y=0;
  jay_goal.pose.orientation.z=0;
  jay_goal.pose.orientation.w=0;
  jay_goal.scale.x=1.0;
  jay_goal.scale.y=1.0;
  jay_goal.scale.z=4.0;
  jay_goal.color.r=1.0f;
  jay_goal.color.g=0.0f;
  jay_goal.color.b=0.0f;
  jay_goal.color.a=1.0;
  jay_goal.lifetime=ros::Duration();

  //stella_goal point cube structure,stella_goal at (0,20)
  stella_goal.pose.position.x=0;
  stella_goal.pose.position.y=20;
  stella_goal.pose.position.z=2;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  stella_goal.pose.orientation.x=0;
  stella_goal.pose.orientation.y=0;
  stella_goal.pose.orientation.z=0;
  stella_goal.pose.orientation.w=0;
  stella_goal.scale.x=1.0;
  stella_goal.scale.y=1.0;
  stella_goal.scale.z=4.0;
  stella_goal.color.r=0.05f;
  stella_goal.color.g=1.0f;
  stella_goal.color.b=0.0f;
  stella_goal.color.a=1.0;
  stella_goal.lifetime=ros::Duration();

  //stella point cube structure,stella at (20,0)
  stella.pose.position.x=20;
  stella.pose.position.y=0;
  stella.pose.position.z=0;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  stella.pose.orientation.x=0;
  stella.pose.orientation.y=0;
  stella.pose.orientation.z=0;
  stella.pose.orientation.w=0;
  stella.scale.x=1.0;
  stella.scale.y=1.0;
  stella.scale.z=1.0;
  stella.color.r=0.0f;
  stella.color.g=1.0f;
  stella.color.b=0.0f;
  stella.color.a=1.0;
  stella.lifetime=ros::Duration();

  //jay point cube structure,jay at (0,0)
  jay.pose.position.x=0;
  jay.pose.position.y=0;
  jay.pose.position.z=0;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  jay.pose.orientation.x=0;
  jay.pose.orientation.y=0;
  jay.pose.orientation.z=0;
  jay.pose.orientation.w=0;
  jay.scale.x=1.0;
  jay.scale.y=1.0;
  jay.scale.z=1.0;
  jay.color.r=1.0f;
  jay.color.g=0.0f;
  jay.color.b=0.0f;
  jay.color.a=1.0;
  jay.lifetime=ros::Duration();

  //jay's path initiate
  jay_path.header.frame_id="/map";
  jay_path.header.stamp=ros::Time::now();
  jay_path.ns="jay path";
  jay_path.action=visualization_msgs::Marker::ADD;
  jay_path.id=5;
  jay_path.type=visualization_msgs::Marker::LINE_STRIP;
  jay_path.scale.x=0.2;
  jay_path.color.r=1.0f;
  jay_path.color.g=0.0f;
  jay_path.color.b=0.0f;
  jay_path.color.a=1.0;

  //stella's path initiate
  stella_path.header.frame_id="/map";
  stella_path.header.stamp=ros::Time::now();
  stella_path.ns="stella path";
  stella_path.action=visualization_msgs::Marker::ADD;
  stella_path.id=6;
  stella_path.type=visualization_msgs::Marker::LINE_STRIP;
  stella_path.scale.x=0.2;
  stella_path.color.r=0.0f;
  stella_path.color.g=1.0f;
  stella_path.color.b=0.0f;
  stella_path.color.a=1.0;

  //obstacle
  obstacle1.header.frame_id="/map";
  obstacle1.header.stamp=ros::Time::now();
  obstacle1.ns="obstacle1";
  obstacle1.action=visualization_msgs::Marker::ADD;
  obstacle1.type=visualization_msgs::Marker::CUBE;
  obstacle1.id=7;
  obstacle1.pose.position.x=9;
  obstacle1.pose.position.y=8;
  obstacle1.pose.position.z=2;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  obstacle1.pose.orientation.x=0;
  obstacle1.pose.orientation.y=0;
  obstacle1.pose.orientation.z=0;
  obstacle1.pose.orientation.w=0;
  obstacle1.scale.x=1.0;
  obstacle1.scale.y=4.0;
  obstacle1.scale.z=4.0;
  obstacle1.color.r=1.0f;
  obstacle1.color.g=0.0f;
  obstacle1.color.b=1.0f;
  obstacle1.color.a=1.0;
  obstacle1.lifetime=ros::Duration();

  obstacle2.header.frame_id="/map";
  obstacle2.header.stamp=ros::Time::now();
  obstacle2.ns="obstacle2";
  obstacle2.action=visualization_msgs::Marker::ADD;
  obstacle2.type=visualization_msgs::Marker::CUBE;
  obstacle2.id=8;
  obstacle2.pose.position.x=13;
  obstacle2.pose.position.y=13;
  obstacle2.pose.position.z=2;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  obstacle2.pose.orientation.x=0;
  obstacle2.pose.orientation.y=0;
  obstacle2.pose.orientation.z=0;
  obstacle2.pose.orientation.w=0;
  obstacle2.scale.x=1.0;
  obstacle2.scale.y=1.0;
  obstacle2.scale.z=1.0;
  obstacle2.color.r=0.3f;
  obstacle2.color.g=0.0f;
  obstacle2.color.b=1.0f;
  obstacle2.color.a=1.0;
  obstacle2.lifetime=ros::Duration();

  //fake coordinate gram
  fake_CD1.header.frame_id="/map";
  fake_CD1.header.stamp=ros::Time::now();
  fake_CD1.ns="fake_CD1";
  fake_CD1.action=visualization_msgs::Marker::ADD;
  fake_CD1.type=visualization_msgs::Marker::CUBE;
  fake_CD1.id=9;
  fake_CD1.pose.position.x=10;
  fake_CD1.pose.position.y=10;
  fake_CD1.pose.position.z=2;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  fake_CD1.pose.orientation.x=0;
  fake_CD1.pose.orientation.y=0;
  fake_CD1.pose.orientation.z=0;
  fake_CD1.pose.orientation.w=0;
  fake_CD1.scale.x=1.0;
  fake_CD1.scale.y=1.0;
  fake_CD1.scale.z=4.0;
  fake_CD1.color.r=0.7f;
  fake_CD1.color.g=0.2f;
  fake_CD1.color.b=1.0f;
  fake_CD1.color.a=1.0;
  fake_CD1.lifetime=ros::Duration();

}

bool is_collision(Map & a, Map & b,List & collision_state){
  std_msgs::Int32 x;
  std_msgs::Int32 y;
  Node * temp_a=&a.nodes[a.start_x][a.start_y];
  int i=0;
  //Get the step mark first, step mark AKA: time stamp
  while(true){
    temp_a->step_mark=i++;
    if(temp_a==&a.nodes[a.goal_x][a.goal_y])
      break;
    temp_a=temp_a->get_previous();
  }

  Node * temp_b=&b.nodes[b.start_x][b.start_y];
  i=0;
  //Get the step mark first, step mark AKA: time stamp
  while(true){
    temp_b->step_mark=i++;
    if(temp_b==&b.nodes[b.goal_x][b.goal_y])
      break;
    temp_b=temp_b->get_previous();
  }

  //check if they hit the same state
  temp_a=&a.nodes[a.start_x][a.start_y];
  temp_b=&b.nodes[b.start_x][b.start_y];//initiate
  while(true){
    if(temp_a->get_x()==temp_b->get_x()
       && temp_b->get_y()==temp_b->get_y())
      collision_state.insert(temp_a);
//    std::cout<<" ax="<<temp_a->get_x();
//    std::cout<<" ay="<<temp_a->get_y();
//    std::cout<<" bx="<<temp_b->get_x();
//    std::cout<<" by="<<temp_b->get_y()<<'\n';
    if(temp_a==&a.nodes[a.goal_x][a.goal_y])
      break;
    if(temp_b==&b.nodes[b.goal_x][b.goal_y])
      break;
    temp_b=temp_b->get_previous();
    temp_a=temp_a->get_previous();
  }
  if (collision_state.get_used()==0)
    return false;
  else
    return true;
}

int main(int argc, char **argv){
  ros::init(argc,argv,"cooperating_simulator");
  ros::NodeHandle n;
  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker",10);
  ros::Rate r(1);

  map_init();
    //publish the marker
    while(marker_pub.getNumSubscribers()<1){
      if(!ros::ok())  return 0;
      ROS_WARN_ONCE("Please create a subscriber to the maker");
      sleep(1);
    }
    marker_pub.publish(jay);
    marker_pub.publish(stella);
    marker_pub.publish(jay_goal);
    marker_pub.publish(stella_goal);
//    marker_pub.publish(obstacle1);
//    marker_pub.publish(obstacle2);

    //fake CD_1
    //marker_pub.publish(fake_CD1);

    Map m_jay(21,21,20,20,0,0);
    Map m_stella(21,21,0,20,20,0);
    Map m_CD(21,21,20,20,0,0);
    //fake  coordination diagram
 //   m_jay.set_obstacle(10,10);
//    m_jay.set_obstacle(9,6);
//    m_jay.set_obstacle(9,7);
//    m_jay.set_obstacle(9,8);
//    m_jay.set_obstacle(9,9);
//    m_jay.set_obstacle(9,10);

//    m_jay.set_obstacle(12,10);
//    m_jay.set_obstacle(13,10);
//    m_jay.set_obstacle(14,10);
//    m_jay.set_obstacle(12,11);
//    m_jay.set_obstacle(13,11);
//    m_jay.set_obstacle(14,11);
//    m_jay.set_obstacle(12,12);
//    m_jay.set_obstacle(13,12);
//    m_jay.set_obstacle(14,12);
//    m_jay.set_obstacle(12,13);
//    m_jay.set_obstacle(13,13);
//    m_jay.set_obstacle(14,13);
//    m_jay.set_obstacle(12,14);
//    m_jay.set_obstacle(13,14);
//    m_jay.set_obstacle(14,14);
//    m_jay.set_obstacle(12,15);
//    m_jay.set_obstacle(13,15);
//    m_jay.set_obstacle(14,15);
//    m_jay.set_obstacle(12,16);
//    m_jay.set_obstacle(13,16);
//    m_jay.set_obstacle(14,16);
////    m_jay.set_obstacle(12,17);
////    m_jay.set_obstacle(13,17);
////    m_jay.set_obstacle(14,17);


//    m_stella.set_obstacle(9,6);
//    m_stella.set_obstacle(9,7);
//    m_stella.set_obstacle(9,8);
//    m_stella.set_obstacle(9,9);
//    m_stella.set_obstacle(9,10);




    m_jay.find_path(0,0);
    Node * temp=&m_jay.nodes[m_jay.start_x][m_jay.start_y];
    geometry_msgs::Point p;
    p.z=0;

    m_stella.find_path(20,0);
    Node * temp_stella=&m_stella.nodes[m_stella.start_x][m_stella.start_y];
    geometry_msgs::Point p_stella;
    p_stella.z=0;

    List collision_state;
    bool collision_flag=is_collision(m_stella,m_jay,collision_state);
//    bool collision_flag=false;//for test
    if(collision_flag){
      ROS_WARN_ONCE("collision");
      for(int i=0;i<collision_state.get_used();i++){
        m_CD.set_obstacle(collision_state.get_data()[i]->get_x(),collision_state.get_data()[i]->get_y());

////        obstacle2.pose.position.x=temp_stella->get_x();//test
////        obstacle2.pose.position.y=temp_stella->get_y();
//        marker_pub.publish(obstacle2);


        collision_state.destack();
      }
  //    m_CD.set_obstacle(5,5);//TEST
      m_CD.find_path(0,0);
    }

    Node * temp_CD=&m_CD.nodes[m_CD.start_x][m_CD.start_y];


  while(ros::ok()){
    //Jay's path show
    if(collision_flag){
      ROS_WARN_ONCE("got collision");
      if(temp!=&m_jay.nodes[m_jay.goal_x][m_jay.goal_y] && temp_CD->get_previous()->get_x()-temp_CD->get_x() !=0){//move robot1?
        jay.pose.position.x=temp->get_x();
        jay.pose.position.y=temp->get_y();
        p.x=temp->get_x();
        p.y=temp->get_y();
        temp=temp->get_previous();

        jay_path.points.push_back(p);
        marker_pub.publish(jay);
        marker_pub.publish(jay_path);
      }
      if(temp_stella!=&m_stella.nodes[m_stella.goal_x][m_stella.goal_y] && temp_CD->get_previous()->get_y()-temp_CD->get_y() !=0){//move robot2?
        stella.pose.position.x=temp_stella->get_x();
        stella.pose.position.y=temp_stella->get_y();
        p_stella.x=temp_stella->get_x();
        p_stella.y=temp_stella->get_y();
        temp_stella=temp_stella->get_previous();

        stella_path.points.push_back(p_stella);
        marker_pub.publish(stella);
        marker_pub.publish(stella_path);
      }
      temp_CD=temp_CD->get_previous();
      if(temp_CD==&m_CD.nodes[m_CD.goal_x][m_CD.goal_y])
        collision_flag==false;//collision check done
    }
    else{
      if(temp!=&m_jay.nodes[m_jay.goal_x][m_jay.goal_y]){
        jay.pose.position.x=temp->get_x();
        jay.pose.position.y=temp->get_y();
        p.x=temp->get_x();
        p.y=temp->get_y();
        temp=temp->get_previous();

        jay_path.points.push_back(p);
        marker_pub.publish(jay);
        marker_pub.publish(jay_path);
      }
      if(temp_stella!=&m_stella.nodes[m_stella.goal_x][m_stella.goal_y]){
        stella.pose.position.x=temp_stella->get_x();
        stella.pose.position.y=temp_stella->get_y();
        p_stella.x=temp_stella->get_x();
        p_stella.y=temp_stella->get_y();
        temp_stella=temp_stella->get_previous();

        stella_path.points.push_back(p_stella);
        marker_pub.publish(stella);
        marker_pub.publish(stella_path);
      }
    }


    r.sleep();
  }


}
