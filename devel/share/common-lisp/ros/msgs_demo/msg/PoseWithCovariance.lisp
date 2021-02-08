; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude PoseWithCovariance.msg.html

(cl:defclass <PoseWithCovariance> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type msgs_demo-msg:Pose
    :initform (cl:make-instance 'msgs_demo-msg:Pose))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PoseWithCovariance (<PoseWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<PoseWithCovariance> is deprecated: use msgs_demo-msg:PoseWithCovariance instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:pose-val is deprecated.  Use msgs_demo-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <PoseWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:covariance-val is deprecated.  Use msgs_demo-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseWithCovariance>) ostream)
  "Serializes a message object of type '<PoseWithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseWithCovariance>) istream)
  "Deserializes a message object of type '<PoseWithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 36)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseWithCovariance>)))
  "Returns string type for a message object of type '<PoseWithCovariance>"
  "msgs_demo/PoseWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseWithCovariance)))
  "Returns string type for a message object of type 'PoseWithCovariance"
  "msgs_demo/PoseWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseWithCovariance>)))
  "Returns md5sum for a message object of type '<PoseWithCovariance>"
  "c23e848cf1b7533a8d7c259073a97e6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseWithCovariance)))
  "Returns md5sum for a message object of type 'PoseWithCovariance"
  "c23e848cf1b7533a8d7c259073a97e6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseWithCovariance>)))
  "Returns full string definition for message of type '<PoseWithCovariance>"
  (cl:format cl:nil "#表示空间中含有不确定性的位姿信息~%#位置：geometry_msgs/PoseWithCovariance.msg~%~%Pose pose~%float64[36] covariance~%~%================================================================================~%MSG: msgs_demo/Pose~%#消息定义自由空间中的位姿信息，包括位置和指向信息~%#位置:geometry_msgs/Pose.msg~%~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: msgs_demo/Point~%#空间中的点的位置~%#位置:geometry_msgs/Point.msg~%~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: msgs_demo/Quaternion~%#消息代表空间中旋转的四元数~%#位置:geometry_msgs/Quaternion.msg~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseWithCovariance)))
  "Returns full string definition for message of type 'PoseWithCovariance"
  (cl:format cl:nil "#表示空间中含有不确定性的位姿信息~%#位置：geometry_msgs/PoseWithCovariance.msg~%~%Pose pose~%float64[36] covariance~%~%================================================================================~%MSG: msgs_demo/Pose~%#消息定义自由空间中的位姿信息，包括位置和指向信息~%#位置:geometry_msgs/Pose.msg~%~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: msgs_demo/Point~%#空间中的点的位置~%#位置:geometry_msgs/Point.msg~%~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: msgs_demo/Quaternion~%#消息代表空间中旋转的四元数~%#位置:geometry_msgs/Quaternion.msg~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseWithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseWithCovariance
    (cl:cons ':pose (pose msg))
    (cl:cons ':covariance (covariance msg))
))
