/* Cooperating Robotics via D* --Zejian Zhou, Github: JayZejianZhou
  I set a 20x20 map,
   robot scale is 1x1,
   start with (0,0), goal is (20,20)
*/

#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
//#include <cmath>

int main(int argc, char **argv){
  ros::init(argc,argv,"cooperating_simulator");
  ros::NodeHandle n;
  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker",10);
  ros::Rate r(30);

  //make a simulated robot, start point, goal point
  visualization_msgs::Marker robot, start, goal;
  robot.header.frame_id=start.header.frame_id=goal.header.frame_id="/map";
  robot.header.stamp=start.header.stamp=goal.header.stamp=ros::Time::now();
  robot.ns="robot";
  robot.id=0;
  start.ns="start_point";
  start.id=1;
  goal.ns="goal_point"; 
  goal.id=2;
  robot.action=start.action=goal.action=visualization_msgs::Marker::ADD;
  robot.type=start.type=goal.type=visualization_msgs::Marker::CUBE;

  robot.pose.position.x=10;
  robot.pose.position.y=10;
  robot.pose.position.z=0;
  robot.pose.orientation.x=0;
  robot.pose.orientation.y=0;
  robot.pose.orientation.z=0;
  robot.pose.orientation.w=0;
  robot.scale.x=1.0;
  robot.scale.y=1.0;
  robot.scale.z=4.0;
  robot.color.r=0.01f;
  robot.color.g=1.0f;
  robot.color.b=0.0f;
  robot.color.a=1.0;
  robot.lifetime=ros::Duration();

    //publish the marker
    while(marker_pub.getNumSubscribers()<1){
      if(!ros::ok())  return 0;
      ROS_WARN_ONCE("Please create a subscriber to the maker");
      sleep(1);
    }
    marker_pub.publish(robot);



  while(ros::ok()){

    r.sleep();
  }


}
