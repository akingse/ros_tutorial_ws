; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude Echos.msg.html

(cl:defclass <Echos> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front_left
    :reader front_left
    :initarg :front_left
    :type cl:fixnum
    :initform 0)
   (front_center
    :reader front_center
    :initarg :front_center
    :type cl:fixnum
    :initform 0)
   (front_right
    :reader front_right
    :initarg :front_right
    :type cl:fixnum
    :initform 0)
   (rear_left
    :reader rear_left
    :initarg :rear_left
    :type cl:fixnum
    :initform 0)
   (rear_center
    :reader rear_center
    :initarg :rear_center
    :type cl:fixnum
    :initform 0)
   (rear_right
    :reader rear_right
    :initarg :rear_right
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Echos (<Echos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Echos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Echos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<Echos> is deprecated: use msgs_demo-msg:Echos instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Echos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:header-val is deprecated.  Use msgs_demo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front_left-val :lambda-list '(m))
(cl:defmethod front_left-val ((m <Echos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:front_left-val is deprecated.  Use msgs_demo-msg:front_left instead.")
  (front_left m))

(cl:ensure-generic-function 'front_center-val :lambda-list '(m))
(cl:defmethod front_center-val ((m <Echos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:front_center-val is deprecated.  Use msgs_demo-msg:front_center instead.")
  (front_center m))

(cl:ensure-generic-function 'front_right-val :lambda-list '(m))
(cl:defmethod front_right-val ((m <Echos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:front_right-val is deprecated.  Use msgs_demo-msg:front_right instead.")
  (front_right m))

(cl:ensure-generic-function 'rear_left-val :lambda-list '(m))
(cl:defmethod rear_left-val ((m <Echos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:rear_left-val is deprecated.  Use msgs_demo-msg:rear_left instead.")
  (rear_left m))

(cl:ensure-generic-function 'rear_center-val :lambda-list '(m))
(cl:defmethod rear_center-val ((m <Echos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:rear_center-val is deprecated.  Use msgs_demo-msg:rear_center instead.")
  (rear_center m))

(cl:ensure-generic-function 'rear_right-val :lambda-list '(m))
(cl:defmethod rear_right-val ((m <Echos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:rear_right-val is deprecated.  Use msgs_demo-msg:rear_right instead.")
  (rear_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Echos>) ostream)
  "Serializes a message object of type '<Echos>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_center)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_center)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rear_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_center)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rear_center)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rear_right)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Echos>) istream)
  "Deserializes a message object of type '<Echos>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_center)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_center)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rear_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_center)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rear_center)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rear_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rear_right)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Echos>)))
  "Returns string type for a message object of type '<Echos>"
  "msgs_demo/Echos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Echos)))
  "Returns string type for a message object of type 'Echos"
  "msgs_demo/Echos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Echos>)))
  "Returns md5sum for a message object of type '<Echos>"
  "41b4a21d92f5fd9f5c8f7dc9c07e154a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Echos)))
  "Returns md5sum for a message object of type 'Echos"
  "41b4a21d92f5fd9f5c8f7dc9c07e154a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Echos>)))
  "Returns full string definition for message of type '<Echos>"
  (cl:format cl:nil "Header header~%uint16 front_left~%uint16 front_center~%uint16 front_right~%uint16 rear_left~%uint16 rear_center~%uint16 rear_right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Echos)))
  "Returns full string definition for message of type 'Echos"
  (cl:format cl:nil "Header header~%uint16 front_left~%uint16 front_center~%uint16 front_right~%uint16 rear_left~%uint16 rear_center~%uint16 rear_right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Echos>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Echos>))
  "Converts a ROS message object to a list"
  (cl:list 'Echos
    (cl:cons ':header (header msg))
    (cl:cons ':front_left (front_left msg))
    (cl:cons ':front_center (front_center msg))
    (cl:cons ':front_right (front_right msg))
    (cl:cons ':rear_left (rear_left msg))
    (cl:cons ':rear_center (rear_center msg))
    (cl:cons ':rear_right (rear_right msg))
))
