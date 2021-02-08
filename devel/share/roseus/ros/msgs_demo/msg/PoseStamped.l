;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::PoseStamped)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'PoseStamped (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::POSESTAMPED")
  (make-package "MSGS_DEMO::POSESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PoseStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_demo::PoseStamped
  :super ros::object
  :slots (_header _pose ))

(defmethod msgs_demo::PoseStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance msgs_demo::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; msgs_demo/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; msgs_demo/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; msgs_demo/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get msgs_demo::PoseStamped :md5sum-) "d3812c3cbc69362b77dc0b19b345f8f5")
(setf (get msgs_demo::PoseStamped :datatype-) "msgs_demo/PoseStamped")
(setf (get msgs_demo::PoseStamped :definition-)
      "#定义有时空基准的位姿
#位置：geometry_msgs/PoseStamped.msg

Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: msgs_demo/Pose
#消息定义自由空间中的位姿信息，包括位置和指向信息
#位置:geometry_msgs/Pose.msg

Point position
Quaternion orientation

================================================================================
MSG: msgs_demo/Point
#空间中的点的位置
#位置:geometry_msgs/Point.msg

float64 x
float64 y
float64 z

================================================================================
MSG: msgs_demo/Quaternion
#消息代表空间中旋转的四元数
#位置:geometry_msgs/Quaternion.msg

float64 x
float64 y
float64 z
float64 w

")



(provide :msgs_demo/PoseStamped "d3812c3cbc69362b77dc0b19b345f8f5")


