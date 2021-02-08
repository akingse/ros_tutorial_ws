; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude Pose.msg.html

(cl:defclass <Pose> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type msgs_demo-msg:Point
    :initform (cl:make-instance 'msgs_demo-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type msgs_demo-msg:Quaternion
    :initform (cl:make-instance 'msgs_demo-msg:Quaternion)))
)

(cl:defclass Pose (<Pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<Pose> is deprecated: use msgs_demo-msg:Pose instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:position-val is deprecated.  Use msgs_demo-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <Pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:orientation-val is deprecated.  Use msgs_demo-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose>) ostream)
  "Serializes a message object of type '<Pose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose>) istream)
  "Deserializes a message object of type '<Pose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose>)))
  "Returns string type for a message object of type '<Pose>"
  "msgs_demo/Pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose)))
  "Returns string type for a message object of type 'Pose"
  "msgs_demo/Pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose>)))
  "Returns md5sum for a message object of type '<Pose>"
  "e45d45a5a1ce597b249e23fb30fc871f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose)))
  "Returns md5sum for a message object of type 'Pose"
  "e45d45a5a1ce597b249e23fb30fc871f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose>)))
  "Returns full string definition for message of type '<Pose>"
  (cl:format cl:nil "#消息定义自由空间中的位姿信息，包括位置和指向信息~%#位置:geometry_msgs/Pose.msg~%~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: msgs_demo/Point~%#空间中的点的位置~%#位置:geometry_msgs/Point.msg~%~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: msgs_demo/Quaternion~%#消息代表空间中旋转的四元数~%#位置:geometry_msgs/Quaternion.msg~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose)))
  "Returns full string definition for message of type 'Pose"
  (cl:format cl:nil "#消息定义自由空间中的位姿信息，包括位置和指向信息~%#位置:geometry_msgs/Pose.msg~%~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: msgs_demo/Point~%#空间中的点的位置~%#位置:geometry_msgs/Point.msg~%~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: msgs_demo/Quaternion~%#消息代表空间中旋转的四元数~%#位置:geometry_msgs/Quaternion.msg~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
))
