;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::Odometry)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'Odometry (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::ODOMETRY")
  (make-package "MSGS_DEMO::ODOMETRY"))

(in-package "ROS")
;;//! \htmlinclude Odometry.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_demo::Odometry
  :super ros::object
  :slots (_header _child_frame_id _pose _twist ))

(defmethod msgs_demo::Odometry
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:child_frame_id __child_frame_id) "")
    ((:pose __pose) (instance msgs_demo::PoseWithCovariance :init))
    ((:twist __twist) (instance msgs_demo::TwistWithCovariance :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _child_frame_id (string __child_frame_id))
   (setq _pose __pose)
   (setq _twist __twist)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; msgs_demo/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; msgs_demo/TwistWithCovariance _twist
    (send _twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; msgs_demo/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; msgs_demo/TwistWithCovariance _twist
       (send _twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; msgs_demo/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; msgs_demo/TwistWithCovariance _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;;
   self)
  )

(setf (get msgs_demo::Odometry :md5sum-) "cd5e73d190d741a2f92e81eda573aca7")
(setf (get msgs_demo::Odometry :datatype-) "msgs_demo/Odometry")
(setf (get msgs_demo::Odometry :definition-)
      "#消息描述了自由空间中位置和速度的估计值
#位置：nav_msgs/Odometry.msg

Header header
string child_frame_id
PoseWithCovariance pose
TwistWithCovariance twist

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
MSG: msgs_demo/PoseWithCovariance
#表示空间中含有不确定性的位姿信息
#位置：geometry_msgs/PoseWithCovariance.msg

Pose pose
float64[36] covariance

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

================================================================================
MSG: msgs_demo/TwistWithCovariance
#消息定义了包含不确定性的速度量，协方差矩阵按行分别表示：
#沿x方向速度的不确定性，沿y方向速度的不确定性，沿z方向速度的不确定性
#绕x转动角速度的不确定性，绕y轴转动的角速度的不确定性，绕z轴转动的角速度的不确定性

#位置：geometry_msgs/TwistWithCovariance.msg

Twist twist
float64[36] covariance  #分别表示[x; y; z; Rx; Ry; Rz]

================================================================================
MSG: msgs_demo/Twist
#定义空间中物体运动的线速度和角速度
#位置：geometry_msgs/Twist.msg

Vector3 linear
Vector3 angular

================================================================================
MSG: msgs_demo/Vector3
#位置:geometry_msgs/Vector3.msg

float64 x
float64 y
float64 z

")



(provide :msgs_demo/Odometry "cd5e73d190d741a2f92e81eda573aca7")


