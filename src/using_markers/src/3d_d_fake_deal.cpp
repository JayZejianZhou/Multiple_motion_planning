/* Cooperating Robotics via D* --Zejian Zhou, Github: JayZejianZhou
  I set a 20x20 map,
   robot scale is 1x1,
   Jay starts at (0,0), goal is (20,20)
   Stella starts at (20,0), goal is (0,20)
*/

#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <iostream>

visualization_msgs::Marker obstacle1,obstacle2,jay,stella,tom, jay_goal, stella_goal,tom_goal ;
visualization_msgs::Marker jay_path, stella_path,tom_path;

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



    void find_path(){
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
            if(process_state()==-1 || nodes[start_x][start_y].get_state()==CLOSE)
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
    void set_obstacle(visualization_msgs::Marker & ob){
      for(int i=ob.pose.position.x-ob.scale.x/2-1;i<ob.pose.position.x+ob.scale.x/2+1;i++)
        for(int j=ob.pose.position.y-ob.scale.y/2-1;j<ob.pose.position.y+ob.scale.y/2+1;j++)
          {
            nodes[i][j].set_k(99999);
            //            std::cout<<"ob "<<j<<','<<k<<','<<i<<'\n';
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
  jay_goal.pose.position.x=9;
  jay_goal.pose.position.y=9;
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
  stella_goal.pose.position.y=9;
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
  stella.pose.position.x=9;
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

  //tom point cube structure,tom at (5,0)
  tom.header.frame_id="/map";
  tom.header.stamp=ros::Time::now();
  tom.ns="tom";
  tom.action=visualization_msgs::Marker::ADD;
  tom.type=visualization_msgs::Marker::CUBE;
  tom.id=9;
  tom.pose.position.x=5;
  tom.pose.position.y=0;
  tom.pose.position.z=0;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  tom.pose.orientation.x=0;
  tom.pose.orientation.y=0;
  tom.pose.orientation.z=0;
  tom.pose.orientation.w=0;
  tom.scale.x=1.0;
  tom.scale.y=1.0;
  tom.scale.z=1.0;
  tom.color.r=0.8f;
  tom.color.g=0.0f;
  tom.color.b=0.6f;
  tom.color.a=1.0;
  tom.lifetime=ros::Duration();

  //tom_goal point cube structure,tom_goal at (0,9)
  tom_goal.header.frame_id="/map";
  tom_goal.header.stamp=ros::Time::now();
  tom_goal.ns="tom_goal";
  tom_goal.action=visualization_msgs::Marker::ADD;
  tom_goal.type=visualization_msgs::Marker::CUBE;
  tom_goal.id=10;
  tom_goal.pose.position.x=0;
  tom_goal.pose.position.y=9;
  tom_goal.pose.position.z=2;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  tom_goal.pose.orientation.x=0;
  tom_goal.pose.orientation.y=0;
  tom_goal.pose.orientation.z=0;
  tom_goal.pose.orientation.w=0;
  tom_goal.scale.x=1.0;
  tom_goal.scale.y=1.0;
  tom_goal.scale.z=4.0;
  tom_goal.color.r=0.8f;
  tom_goal.color.g=0.0f;
  tom_goal.color.b=0.6f;
  tom_goal.color.a=1.0;
  tom_goal.lifetime=ros::Duration();


  //jay's path initiate
  jay_path.header.frame_id="/map";
  jay_path.header.stamp=ros::Time::now();
  jay_path.ns="jay path";
  jay_path.action=visualization_msgs::Marker::ADD;
  jay_path.id=5;
  jay_path.type=visualization_msgs::Marker::LINE_STRIP;
  jay_path.scale.x=0.1;
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
  stella_path.scale.x=0.1;
  stella_path.color.r=0.0f;
  stella_path.color.g=1.0f;
  stella_path.color.b=0.0f;
  stella_path.color.a=1.0;

  //tom_path point cube structure,
  tom_path.header.frame_id="/map";
  tom_path.header.stamp=ros::Time::now();
  tom_path.ns="tom_path";
  tom_path.action=visualization_msgs::Marker::ADD;
  tom_path.type=visualization_msgs::Marker::LINE_STRIP;
  tom_path.id=11;
  tom_path.scale.x=0.2;
  tom_path.color.r=0.8f;
  tom_path.color.g=0.0f;
  tom_path.color.b=0.6f;
  tom_path.color.a=1.0;
  tom_path.lifetime=ros::Duration();

  //obstacle
  obstacle1.header.frame_id="/map";
  obstacle1.header.stamp=ros::Time::now();
  obstacle1.ns="obstacle1";
  obstacle1.action=visualization_msgs::Marker::ADD;
  obstacle1.type=visualization_msgs::Marker::CUBE;
  obstacle1.id=7;
  obstacle1.pose.position.x=4;
  obstacle1.pose.position.y=3;
  obstacle1.pose.position.z=2;//goal height is 4, set z=-2 prevent the goal cube penetrate map
  obstacle1.pose.orientation.x=0;
  obstacle1.pose.orientation.y=0;
  obstacle1.pose.orientation.z=0;
  obstacle1.pose.orientation.w=0;
  obstacle1.scale.x=2.0;
  obstacle1.scale.y=3.0;
  obstacle1.scale.z=4.0;
  obstacle1.color.r=0.7f;
  obstacle1.color.g=0.8f;
  obstacle1.color.b=0.7f;
  obstacle1.color.a=1.0;
  obstacle1.lifetime=ros::Duration();
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
    marker_pub.publish(tom);
   // marker_pub.publish(tom_goal);
    marker_pub.publish(obstacle1);

    Map m_jay(10,10,9,9,0,0);
    Map m_stella(10,10,0,9,9,0);
    Map m_tom(10,10,0,9,5,0);
    m_jay.set_obstacle(obstacle1);
    m_stella.set_obstacle(obstacle1);
    m_tom.set_obstacle(obstacle1);

    m_jay.find_path();
    m_stella.find_path();
    m_tom.find_path();

    Node * temp=&m_jay.nodes[m_jay.start_x][m_jay.start_y];
    geometry_msgs::Point p;
    p.z=0;

    Node * temp_stella=&m_stella.nodes[m_stella.start_x][m_stella.start_y];
    geometry_msgs::Point p_stella;
    p_stella.z=0;

    Node * temp_tom=&m_tom.nodes[m_tom.start_x][m_tom.start_y];
    geometry_msgs::Point p_tom;
    p_tom.z=0;

    int count=0;
    bool fake_go=false;//fake count
  while(ros::ok()){

    jay.pose.position.x=temp->get_x();
    jay.pose.position.y=temp->get_y();
    p.x=temp->get_x();
    p.y=temp->get_y();
    temp=temp->get_previous();

    jay_path.points.push_back(p);
    marker_pub.publish(jay);
    marker_pub.publish(jay_path);
////////////////////////////
    stella.pose.position.x=temp_stella->get_x();
    stella.pose.position.y=temp_stella->get_y();
    p_stella.x=temp_stella->get_x();
    p_stella.y=temp_stella->get_y();
      temp_stella=temp_stella->get_previous();

    stella_path.points.push_back(p_stella);
    marker_pub.publish(stella);
    marker_pub.publish(stella_path);
////////////////////////////
    tom.pose.position.x=temp_tom->get_x();
    tom.pose.position.y=temp_tom->get_y();
    p_tom.x=temp_tom->get_x();
    p_tom.y=temp_tom->get_y();
//    if(p_tom.x==6 && p_tom.y==2 &&count<10){
//      fake_go=true;
//      count++;
//      if(count==3)
//        fake_go=false;
//    }
    if(!fake_go){
    temp_tom=temp_tom->get_previous();
    }

    tom_path.points.push_back(p_tom);
    marker_pub.publish(tom);
    marker_pub.publish(tom_path);



    r.sleep();
  }


}
