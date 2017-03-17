/* D* Algorithm, maintained by JayZejianZhou
 */
#include <iostream>
enum State{NEW,OPEN,CLOSE};//state of every nood
class Map{
private:
  class List{//grow array OPEN and CLOSE list
  public:
    class Node{//every state
    public:
      //variables in public because class in private of D_star
      State state;
      int k;//cost to Goal position
      Node * next;
      Node * previous;//double linked list node;
      //      int x;
      //      int y;//position
      //Node constructors
      Node():state(NEW),k(0),next(nullptr),previous(nullptr),x(0),y(0){}
      Node(int t_x,int t_y):state(NEW),k(0),next(nullptr),previous(nullptr){}

      //Node methods
      //(left to be filled)
    };

    //List variables 
    int used;
    Node * data;
    int capacity;

    //List constructor & destructor
    List():used(0),data(new Node[used]),capacity(1){}
    ~List(){
      delete [] data;
    }

    //List methods
    void sort(){//simple sort
      for (int i=0;i<used;i++){
	for (int j=i;j<used;j++){
	  if(data[i].k>data[j].k){
	    Node temp;
	    temp=Node[i];
	    Node[i]=Node[j];
	    Node[j]=temp;
	  }
	}
      }
    }
    void grow(){
      Node * temp=new Node[capacity*2];
      for(int i=0;i<used;i++)
	temp[i]=data[i];
      delete [] data;
      data=temp;
    }

    void insert(Node  n){//copy, don't pass by reference, it may die in the scope
      n.state=OPEN;
      data[used]=n;
      used++;
      if(used>=capacity) grow();
    }
    void destack(){
      for(int i=1;i<used;i++){
	data[i-1]=temp[i];
      }
      used--;
    }
    Node min_state(){
      sort();
      return data[0];
    }
    int get_kmin(){
      sort();
      return data[0].k;
    }
    bool is_inlist(Node & n){
      for (int i=0;i<used;i++){
	if(n.x==data[i].x){
	  if(n.y==data[i].y)
	    return true;
	}
      }
      return false;
    }
  };
//Map variables 
List open_list;
List close_list;
int map_width;
int map_length;
int goal_x;
int goal_y;
Node  nodes[map_width][map_length];
public:
//Map constructor
//Map(){}//empty instance is not allowed
Map(int t_map_width, int t_map_length, int t_goal_x, int t_goal_y):map_width(t_map_width),map_length(t_map_length),goal_x(t_goal_x),goal_y(t_goal_y){
  Node temp;
  for(i=0;i<map_width;i++)
    for(j=0;i<map_length;j++)
      nodes[i][j]=temp;//initiate nodes array
}

//Map methods
int process_state(){
  if(open_list.used==0)  return -1;//Nothing in open list anymore
  int kold = get_kmin();
  open_list.destack();
  if(kold<open_list.data[0]){//raise state

  }
}

void find_path(){
  //1st step: put goal in open_list
  Node goal(goal_x,goal_y);
  open_list.insert(goal);

}
};


int main(){
  return 0;
}
