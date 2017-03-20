/* Cooperating Robotics via D* --Zejian Zhou, Github: JayZejianZhou
  I set a 20x20 map,
   robot scale is 1x1,
   Jay starts at (0,0), goal is (20,20)
   Stella starts at (20,0), goal is (0,20)
*/

#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <iostream>

visualization_msgs::Marker jay,stella, jay_goal, stella_goal;
visualization_msgs::Marker jay_path, stella_path;
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
//    Map m_jay(10,10,9,9,0,0);
//    Map m_stella(10,10,8,8,0,0);
//    m_jay.set_obstacle(3,3);
//    m_jay.set_obstacle(3,4);
//    m_jay.find_path();
//    Node * temp=&m_jay.nodes[m_jay.start_x][m_jay.start_y];
    int i=0;
    int j=0;
    geometry_msgs::Point p;
    p.z=0;
  while(ros::ok()){
//    jay.pose.position.x=temp->get_x();
//    jay.pose.position.y=temp->get_y();
//    temp=temp->get_previous();

    jay.pose.position.x=i;
    jay.pose.position.y=j;
    p.x=i;p.y=j;
    jay_path.points.push_back(p);
    marker_pub.publish(jay);
    marker_pub.publish(jay_path);

    stella.pose.position.x=20-i;
    stella.pose.position.y=j;
    p.x=20-i;
    stella_path.points.push_back(p);
    marker_pub.publish(stella);
    marker_pub.publish(stella_path);
    if(p.x==p.y) break;
    i++;
    j++;
//    if(i>21) break;
    r.sleep();
  }


}
