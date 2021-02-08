; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude TwistWithCovariance.msg.html

(cl:defclass <TwistWithCovariance> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type msgs_demo-msg:Twist
    :initform (cl:make-instance 'msgs_demo-msg:Twist))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TwistWithCovariance (<TwistWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TwistWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TwistWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<TwistWithCovariance> is deprecated: use msgs_demo-msg:TwistWithCovariance instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <TwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:twist-val is deprecated.  Use msgs_demo-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <TwistWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:covariance-val is deprecated.  Use msgs_demo-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TwistWithCovariance>) ostream)
  "Serializes a message object of type '<TwistWithCovariance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TwistWithCovariance>) istream)
  "Deserializes a message object of type '<TwistWithCovariance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TwistWithCovariance>)))
  "Returns string type for a message object of type '<TwistWithCovariance>"
  "msgs_demo/TwistWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TwistWithCovariance)))
  "Returns string type for a message object of type 'TwistWithCovariance"
  "msgs_demo/TwistWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TwistWithCovariance>)))
  "Returns md5sum for a message object of type '<TwistWithCovariance>"
  "1fe8a28e6890a4cc3ae4c3ca5c7d82e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TwistWithCovariance)))
  "Returns md5sum for a message object of type 'TwistWithCovariance"
  "1fe8a28e6890a4cc3ae4c3ca5c7d82e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TwistWithCovariance>)))
  "Returns full string definition for message of type '<TwistWithCovariance>"
  (cl:format cl:nil "#消息定义了包含不确定性的速度量，协方差矩阵按行分别表示：~%#沿x方向速度的不确定性，沿y方向速度的不确定性，沿z方向速度的不确定性~%#绕x转动角速度的不确定性，绕y轴转动的角速度的不确定性，绕z轴转动的角速度的不确定性~%~%#位置：geometry_msgs/TwistWithCovariance.msg~%~%Twist twist~%float64[36] covariance  #分别表示[x; y; z; Rx; Ry; Rz]~%~%================================================================================~%MSG: msgs_demo/Twist~%#定义空间中物体运动的线速度和角速度~%#位置：geometry_msgs/Twist.msg~%~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: msgs_demo/Vector3~%#位置:geometry_msgs/Vector3.msg~%~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TwistWithCovariance)))
  "Returns full string definition for message of type 'TwistWithCovariance"
  (cl:format cl:nil "#消息定义了包含不确定性的速度量，协方差矩阵按行分别表示：~%#沿x方向速度的不确定性，沿y方向速度的不确定性，沿z方向速度的不确定性~%#绕x转动角速度的不确定性，绕y轴转动的角速度的不确定性，绕z轴转动的角速度的不确定性~%~%#位置：geometry_msgs/TwistWithCovariance.msg~%~%Twist twist~%float64[36] covariance  #分别表示[x; y; z; Rx; Ry; Rz]~%~%================================================================================~%MSG: msgs_demo/Twist~%#定义空间中物体运动的线速度和角速度~%#位置：geometry_msgs/Twist.msg~%~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: msgs_demo/Vector3~%#位置:geometry_msgs/Vector3.msg~%~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TwistWithCovariance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TwistWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'TwistWithCovariance
    (cl:cons ':twist (twist msg))
    (cl:cons ':covariance (covariance msg))
))
