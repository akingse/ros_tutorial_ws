; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude Accel.msg.html

(cl:defclass <Accel> (roslisp-msg-protocol:ros-message)
  ((linear
    :reader linear
    :initarg :linear
    :type msgs_demo-msg:Vector3
    :initform (cl:make-instance 'msgs_demo-msg:Vector3))
   (angular
    :reader angular
    :initarg :angular
    :type msgs_demo-msg:Vector3
    :initform (cl:make-instance 'msgs_demo-msg:Vector3)))
)

(cl:defclass Accel (<Accel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Accel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Accel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<Accel> is deprecated: use msgs_demo-msg:Accel instead.")))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:linear-val is deprecated.  Use msgs_demo-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:angular-val is deprecated.  Use msgs_demo-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Accel>) ostream)
  "Serializes a message object of type '<Accel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Accel>) istream)
  "Deserializes a message object of type '<Accel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Accel>)))
  "Returns string type for a message object of type '<Accel>"
  "msgs_demo/Accel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Accel)))
  "Returns string type for a message object of type 'Accel"
  "msgs_demo/Accel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Accel>)))
  "Returns md5sum for a message object of type '<Accel>"
  "9f195f881246fdfa2798d1d3eebca84a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Accel)))
  "Returns md5sum for a message object of type 'Accel"
  "9f195f881246fdfa2798d1d3eebca84a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Accel>)))
  "Returns full string definition for message of type '<Accel>"
  (cl:format cl:nil "#定义加速度项，包括线性加速度和角加速度~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: msgs_demo/Vector3~%#位置:geometry_msgs/Vector3.msg~%~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Accel)))
  "Returns full string definition for message of type 'Accel"
  (cl:format cl:nil "#定义加速度项，包括线性加速度和角加速度~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: msgs_demo/Vector3~%#位置:geometry_msgs/Vector3.msg~%~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Accel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Accel>))
  "Converts a ROS message object to a list"
  (cl:list 'Accel
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
