/* D* Algorithm, maintained by JayZejianZhou
 * Goal_x and Goal_y in Map should start from 0
 * map must less than 20*20, left-down is (0,0)
 */
#include <iostream>
//#include <cmath>
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
    Node():state(NEW),k(0),previous(nullptr),x(0),y(0),is_path(false){}
    Node(int t_x,int t_y):state(NEW),k(0),previous(nullptr),is_path(false){}
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
    void insert(Node * n,double t_k){//pass the pointer
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
    int map_width;
    int map_length;
    int goal_x;
    int goal_y;
    Node  nodes[10][10];
public:
    //Map constructor
    //Map(){}//empty instance is not allowed
    Map(int t_map_width, int t_map_length, int t_goal_x, int t_goal_y):map_width(t_map_width),map_length(t_map_length),goal_x(t_goal_x),goal_y(t_goal_y){
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
        open_list.insert(&nodes[goal_x][goal_y],0.0);
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
            if(process_state()==-1 || nodes[0][0].get_state()==CLOSE)
                break;


//            //display---------------------------------
//            for (int i=0;i<map_length;i++){
//                for(int j=0;j<map_width;j++)
//                    if(nodes[i][j].get_is_path())
//                        std::cout<<"0 ";
//                    else if(nodes[i][j].get_state()==NEW)
//                        std::cout<<". ";
//                    else if(nodes[i][j].get_state()==OPEN)
//                        std::cout<<"* ";
//                    else
//                        std::cout<<"# ";
//                std::cout<<'\n';
//            }
//            std::cout<<"\n\n\n";

        }
        //find_path--------------------------------------
        Node* temp=&nodes[0][0];
        temp->set_is_path(true);
        while(temp!=&nodes[goal_x][goal_y]){
            temp=temp->get_previous();
            temp->set_is_path(true);
        }
//        //display---------------------------------
//        for (int i=0;i<map_length;i++){
//            for(int j=0;j<map_width;j++)
//                if(nodes[i][j].get_is_path())
//                    std::cout<<"0 ";
//                else if(nodes[i][j].get_k()>=99999)
//                    std::cout<<"% ";
//                else if(nodes[i][j].get_state()==NEW)
//                    std::cout<<". ";
//                else if(nodes[i][j].get_state()==OPEN)
//                    std::cout<<"* ";
//                else
//                    std::cout<<"# ";
//            std::cout<<'\n';
//        }
    }
    void set_obstacle(){
        nodes[5][4].set_k(99999);
        nodes[4][4].set_k(99999);//unlimited arc
        nodes[3][4].set_k(99999);//unlimited arc
        nodes[2][4].set_k(99999);//unlimited arc
        nodes[6][4].set_k(99999);
        nodes[7][4].set_k(99999);
        nodes[8][4].set_k(99999);
        nodes[9][4].set_k(99999);
    }
};


//int main(){
//    Map a(10,10,8,8);
//    a.set_obstacle();
//    a.find_path();
//    return 0;
//}
