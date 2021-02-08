; Auto-generated. Do not edit!


(cl:in-package ros_tutorials_service-srv)


;//! \htmlinclude SrvTutorial-request.msg.html

(cl:defclass <SrvTutorial-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass SrvTutorial-request (<SrvTutorial-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvTutorial-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvTutorial-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tutorials_service-srv:<SrvTutorial-request> is deprecated: use ros_tutorials_service-srv:SrvTutorial-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <SrvTutorial-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorials_service-srv:a-val is deprecated.  Use ros_tutorials_service-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <SrvTutorial-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorials_service-srv:b-val is deprecated.  Use ros_tutorials_service-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvTutorial-request>) ostream)
  "Serializes a message object of type '<SrvTutorial-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvTutorial-request>) istream)
  "Deserializes a message object of type '<SrvTutorial-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvTutorial-request>)))
  "Returns string type for a service object of type '<SrvTutorial-request>"
  "ros_tutorials_service/SrvTutorialRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTutorial-request)))
  "Returns string type for a service object of type 'SrvTutorial-request"
  "ros_tutorials_service/SrvTutorialRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvTutorial-request>)))
  "Returns md5sum for a message object of type '<SrvTutorial-request>"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvTutorial-request)))
  "Returns md5sum for a message object of type 'SrvTutorial-request"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvTutorial-request>)))
  "Returns full string definition for message of type '<SrvTutorial-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvTutorial-request)))
  "Returns full string definition for message of type 'SrvTutorial-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvTutorial-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvTutorial-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvTutorial-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude SrvTutorial-response.msg.html

(cl:defclass <SrvTutorial-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SrvTutorial-response (<SrvTutorial-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SrvTutorial-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SrvTutorial-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tutorials_service-srv:<SrvTutorial-response> is deprecated: use ros_tutorials_service-srv:SrvTutorial-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SrvTutorial-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorials_service-srv:result-val is deprecated.  Use ros_tutorials_service-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SrvTutorial-response>) ostream)
  "Serializes a message object of type '<SrvTutorial-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SrvTutorial-response>) istream)
  "Deserializes a message object of type '<SrvTutorial-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SrvTutorial-response>)))
  "Returns string type for a service object of type '<SrvTutorial-response>"
  "ros_tutorials_service/SrvTutorialResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTutorial-response)))
  "Returns string type for a service object of type 'SrvTutorial-response"
  "ros_tutorials_service/SrvTutorialResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SrvTutorial-response>)))
  "Returns md5sum for a message object of type '<SrvTutorial-response>"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SrvTutorial-response)))
  "Returns md5sum for a message object of type 'SrvTutorial-response"
  "d431cae597499d244ef1c576e21358c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SrvTutorial-response>)))
  "Returns full string definition for message of type '<SrvTutorial-response>"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SrvTutorial-response)))
  "Returns full string definition for message of type 'SrvTutorial-response"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SrvTutorial-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SrvTutorial-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SrvTutorial-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SrvTutorial)))
  'SrvTutorial-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SrvTutorial)))
  'SrvTutorial-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SrvTutorial)))
  "Returns string type for a service object of type '<SrvTutorial>"
  "ros_tutorials_service/SrvTutorial")