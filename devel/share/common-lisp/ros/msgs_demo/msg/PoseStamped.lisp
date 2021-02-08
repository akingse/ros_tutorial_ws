; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude PoseStamped.msg.html

(cl:defclass <PoseStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type msgs_demo-msg:Pose
    :initform (cl:make-instance 'msgs_demo-msg:Pose)))
)

(cl:defclass PoseStamped (<PoseStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<PoseStamped> is deprecated: use msgs_demo-msg:PoseStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:header-val is deprecated.  Use msgs_demo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:pose-val is deprecated.  Use msgs_demo-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseStamped>) ostream)
  "Serializes a message object of type '<PoseStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseStamped>) istream)
  "Deserializes a message object of type '<PoseStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseStamped>)))
  "Returns string type for a message object of type '<PoseStamped>"
  "msgs_demo/PoseStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseStamped)))
  "Returns string type for a message object of type 'PoseStamped"
  "msgs_demo/PoseStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseStamped>)))
  "Returns md5sum for a message object of type '<PoseStamped>"
  "d3812c3cbc69362b77dc0b19b345f8f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseStamped)))
  "Returns md5sum for a message object of type 'PoseStamped"
  "d3812c3cbc69362b77dc0b19b345f8f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseStamped>)))
  "Returns full string definition for message of type '<PoseStamped>"
  (cl:format cl:nil "#定义有时空基准的位姿~%#位置：geometry_msgs/PoseStamped.msg~%~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: msgs_demo/Pose~%#消息定义自由空间中的位姿信息，包括位置和指向信息~%#位置:geometry_msgs/Pose.msg~%~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: msgs_demo/Point~%#空间中的点的位置~%#位置:geometry_msgs/Point.msg~%~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: msgs_demo/Quaternion~%#消息代表空间中旋转的四元数~%#位置:geometry_msgs/Quaternion.msg~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseStamped)))
  "Returns full string definition for message of type 'PoseStamped"
  (cl:format cl:nil "#定义有时空基准的位姿~%#位置：geometry_msgs/PoseStamped.msg~%~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: msgs_demo/Pose~%#消息定义自由空间中的位姿信息，包括位置和指向信息~%#位置:geometry_msgs/Pose.msg~%~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: msgs_demo/Point~%#空间中的点的位置~%#位置:geometry_msgs/Point.msg~%~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: msgs_demo/Quaternion~%#消息代表空间中旋转的四元数~%#位置:geometry_msgs/Quaternion.msg~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseStamped
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
))
