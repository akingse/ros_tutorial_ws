; Auto-generated. Do not edit!


(cl:in-package msgs_demo-srv)


;//! \htmlinclude TalkerListener-request.msg.html

(cl:defclass <TalkerListener-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform ""))
)

(cl:defclass TalkerListener-request (<TalkerListener-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TalkerListener-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TalkerListener-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-srv:<TalkerListener-request> is deprecated: use msgs_demo-srv:TalkerListener-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <TalkerListener-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-srv:request-val is deprecated.  Use msgs_demo-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TalkerListener-request>) ostream)
  "Serializes a message object of type '<TalkerListener-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TalkerListener-request>) istream)
  "Deserializes a message object of type '<TalkerListener-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TalkerListener-request>)))
  "Returns string type for a service object of type '<TalkerListener-request>"
  "msgs_demo/TalkerListenerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkerListener-request)))
  "Returns string type for a service object of type 'TalkerListener-request"
  "msgs_demo/TalkerListenerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TalkerListener-request>)))
  "Returns md5sum for a message object of type '<TalkerListener-request>"
  "33ea4e5aeb30f5913da681ca459d55f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TalkerListener-request)))
  "Returns md5sum for a message object of type 'TalkerListener-request"
  "33ea4e5aeb30f5913da681ca459d55f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TalkerListener-request>)))
  "Returns full string definition for message of type '<TalkerListener-request>"
  (cl:format cl:nil "~%~%~%string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TalkerListener-request)))
  "Returns full string definition for message of type 'TalkerListener-request"
  (cl:format cl:nil "~%~%~%string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TalkerListener-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TalkerListener-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TalkerListener-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude TalkerListener-response.msg.html

(cl:defclass <TalkerListener-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass TalkerListener-response (<TalkerListener-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TalkerListener-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TalkerListener-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-srv:<TalkerListener-response> is deprecated: use msgs_demo-srv:TalkerListener-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <TalkerListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-srv:response-val is deprecated.  Use msgs_demo-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TalkerListener-response>) ostream)
  "Serializes a message object of type '<TalkerListener-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TalkerListener-response>) istream)
  "Deserializes a message object of type '<TalkerListener-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TalkerListener-response>)))
  "Returns string type for a service object of type '<TalkerListener-response>"
  "msgs_demo/TalkerListenerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkerListener-response)))
  "Returns string type for a service object of type 'TalkerListener-response"
  "msgs_demo/TalkerListenerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TalkerListener-response>)))
  "Returns md5sum for a message object of type '<TalkerListener-response>"
  "33ea4e5aeb30f5913da681ca459d55f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TalkerListener-response)))
  "Returns md5sum for a message object of type 'TalkerListener-response"
  "33ea4e5aeb30f5913da681ca459d55f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TalkerListener-response>)))
  "Returns full string definition for message of type '<TalkerListener-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TalkerListener-response)))
  "Returns full string definition for message of type 'TalkerListener-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TalkerListener-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TalkerListener-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TalkerListener-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TalkerListener)))
  'TalkerListener-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TalkerListener)))
  'TalkerListener-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkerListener)))
  "Returns string type for a service object of type '<TalkerListener>"
  "msgs_demo/TalkerListener")