; Auto-generated. Do not edit!


(cl:in-package msgs_demo-msg)


;//! \htmlinclude Power.msg.html

(cl:defclass <Power> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (power
    :reader power
    :initarg :power
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Power (<Power>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Power>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Power)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgs_demo-msg:<Power> is deprecated: use msgs_demo-msg:Power instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:header-val is deprecated.  Use msgs_demo-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <Power>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgs_demo-msg:power-val is deprecated.  Use msgs_demo-msg:power instead.")
  (power m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Power>)))
    "Constants for message type '<Power>"
  '((:ON . True)
    (:OFF . False))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Power)))
    "Constants for message type 'Power"
  '((:ON . True)
    (:OFF . False))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Power>) ostream)
  "Serializes a message object of type '<Power>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'power) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Power>) istream)
  "Deserializes a message object of type '<Power>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'power) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Power>)))
  "Returns string type for a message object of type '<Power>"
  "msgs_demo/Power")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Power)))
  "Returns string type for a message object of type 'Power"
  "msgs_demo/Power")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Power>)))
  "Returns md5sum for a message object of type '<Power>"
  "2c1df04c080f2d0a63612b2aeb670955")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Power)))
  "Returns md5sum for a message object of type 'Power"
  "2c1df04c080f2d0a63612b2aeb670955")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Power>)))
  "Returns full string definition for message of type '<Power>"
  (cl:format cl:nil "Header header~%bool power~%~%~%######################~%bool ON  = 1~%bool OFF = 0~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Power)))
  "Returns full string definition for message of type 'Power"
  (cl:format cl:nil "Header header~%bool power~%~%~%######################~%bool ON  = 1~%bool OFF = 0~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Power>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Power>))
  "Converts a ROS message object to a list"
  (cl:list 'Power
    (cl:cons ':header (header msg))
    (cl:cons ':power (power msg))
))
