; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude Odometry.msg.html

(cl:defclass <Odometry> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (child_frame_id
    :reader child_frame_id
    :initarg :child_frame_id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type msgs_demo-msg:PoseWithCovariance
    :initform (cl:make-instance 'msgs_demo-msg:PoseWithCovariance))
   (twist
    :reader twist
    :initarg :twist
    :type msgs_demo-msg:TwistWithCovariance
    :initform (cl:make-instance 'msgs_demo-msg:TwistWithCovariance)))
)

(cl:defclass Odometry (<Odometry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odometry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odometry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<Odometry> is deprecated: use msgs_demo-msg:Odometry instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Odometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:header-val is deprecated.  Use msgs_demo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'child_frame_id-val :lambda-list '(m))
(cl:defmethod child_frame_id-val ((m <Odometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:child_frame_id-val is deprecated.  Use msgs_demo-msg:child_frame_id instead.")
  (child_frame_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Odometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:pose-val is deprecated.  Use msgs_demo-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <Odometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:twist-val is deprecated.  Use msgs_demo-msg:twist instead.")
  (twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odometry>) ostream)
  "Serializes a message object of type '<Odometry>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odometry>) istream)
  "Deserializes a message object of type '<Odometry>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odometry>)))
  "Returns string type for a message object of type '<Odometry>"
  "msgs_demo/Odometry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odometry)))
  "Returns string type for a message object of type 'Odometry"
  "msgs_demo/Odometry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odometry>)))
  "Returns md5sum for a message object of type '<Odometry>"
  "cd5e73d190d741a2f92e81eda573aca7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odometry)))
  "Returns md5sum for a message object of type 'Odometry"
  "cd5e73d190d741a2f92e81eda573aca7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odometry>)))
  "Returns full string definition for message of type '<Odometry>"
  (cl:format cl:nil "#消息描述了自由空间中位置和速度的估计值~%#位置：nav_msgs/Odometry.msg~%~%Header header~%string child_frame_id~%PoseWithCovariance pose~%TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: msgs_demo/PoseWithCovariance~%#表示空间中含有不确定性的位姿信息~%#位置：geometry_msgs/PoseWithCovariance.msg~%~%Pose pose~%float64[36] covariance~%~%================================================================================~%MSG: msgs_demo/Pose~%#消息定义自由空间中的位姿信息，包括位置和指向信息~%#位置:geometry_msgs/Pose.msg~%~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: msgs_demo/Point~%#空间中的点的位置~%#位置:geometry_msgs/Point.msg~%~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: msgs_demo/Quaternion~%#消息代表空间中旋转的四元数~%#位置:geometry_msgs/Quaternion.msg~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: msgs_demo/TwistWithCovariance~%#消息定义了包含不确定性的速度量，协方差矩阵按行分别表示：~%#沿x方向速度的不确定性，沿y方向速度的不确定性，沿z方向速度的不确定性~%#绕x转动角速度的不确定性，绕y轴转动的角速度的不确定性，绕z轴转动的角速度的不确定性~%~%#位置：geometry_msgs/TwistWithCovariance.msg~%~%Twist twist~%float64[36] covariance  #分别表示[x; y; z; Rx; Ry; Rz]~%~%================================================================================~%MSG: msgs_demo/Twist~%#定义空间中物体运动的线速度和角速度~%#位置：geometry_msgs/Twist.msg~%~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: msgs_demo/Vector3~%#位置:geometry_msgs/Vector3.msg~%~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odometry)))
  "Returns full string definition for message of type 'Odometry"
  (cl:format cl:nil "#消息描述了自由空间中位置和速度的估计值~%#位置：nav_msgs/Odometry.msg~%~%Header header~%string child_frame_id~%PoseWithCovariance pose~%TwistWithCovariance twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: msgs_demo/PoseWithCovariance~%#表示空间中含有不确定性的位姿信息~%#位置：geometry_msgs/PoseWithCovariance.msg~%~%Pose pose~%float64[36] covariance~%~%================================================================================~%MSG: msgs_demo/Pose~%#消息定义自由空间中的位姿信息，包括位置和指向信息~%#位置:geometry_msgs/Pose.msg~%~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: msgs_demo/Point~%#空间中的点的位置~%#位置:geometry_msgs/Point.msg~%~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: msgs_demo/Quaternion~%#消息代表空间中旋转的四元数~%#位置:geometry_msgs/Quaternion.msg~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: msgs_demo/TwistWithCovariance~%#消息定义了包含不确定性的速度量，协方差矩阵按行分别表示：~%#沿x方向速度的不确定性，沿y方向速度的不确定性，沿z方向速度的不确定性~%#绕x转动角速度的不确定性，绕y轴转动的角速度的不确定性，绕z轴转动的角速度的不确定性~%~%#位置：geometry_msgs/TwistWithCovariance.msg~%~%Twist twist~%float64[36] covariance  #分别表示[x; y; z; Rx; Ry; Rz]~%~%================================================================================~%MSG: msgs_demo/Twist~%#定义空间中物体运动的线速度和角速度~%#位置：geometry_msgs/Twist.msg~%~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: msgs_demo/Vector3~%#位置:geometry_msgs/Vector3.msg~%~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odometry>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'child_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odometry>))
  "Converts a ROS message object to a list"
  (cl:list 'Odometry
    (cl:cons ':header (header msg))
    (cl:cons ':child_frame_id (child_frame_id msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
))
