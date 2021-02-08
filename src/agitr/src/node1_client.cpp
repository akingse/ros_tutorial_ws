#include <ros/ros.h>
#include <turtlesim/Spawn.h>

int main(int argc, char **argv)
{
    /* code for main function */
    ros::init(argc, argv, "spawn_turtle");
    ros::NodeHandle nh;
    ros::ServiceClient spawnClient = nh.serviceClient<turtlesim::Spawn>("spawn");

    turtlesim::Spawn::Request req;
    turtlesim::Spawn::Response resp;

    req.x = 2;
    req.y = 3;
    req.theta = M_PI/2;
    req.name = "Leo";

    bool success = spawnClient.call(req, resp);
    if (success)
    {
        /* code for True */
        ROS_INFO_STREAM("Spawned a turtle named:"<<resp.name);
    }
    else
    {
        ROS_ERROR_STREAM("Failed to spawn ...");
    }
    return 0;
}
