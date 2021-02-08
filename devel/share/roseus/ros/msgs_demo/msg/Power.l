;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::Power)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'Power (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::POWER")
  (make-package "MSGS_DEMO::POWER"))

(in-package "ROS")
;;//! \htmlinclude Power.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ON*" (find-package "MSGS_DEMO::POWER"))
(shadow '*ON* (find-package "MSGS_DEMO::POWER"))
(defconstant msgs_demo::Power::*ON* nil)
(intern "*OFF*" (find-package "MSGS_DEMO::POWER"))
(shadow '*OFF* (find-package "MSGS_DEMO::POWER"))
(defconstant msgs_demo::Power::*OFF* nil)
(defclass msgs_demo::Power
  :super ros::object
  :slots (_header _power ))

(defmethod msgs_demo::Power
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:power __power) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _power __power)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _power
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _power
       (if _power (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _power
     (setq _power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get msgs_demo::Power :md5sum-) "2c1df04c080f2d0a63612b2aeb670955")
(setf (get msgs_demo::Power :datatype-) "msgs_demo/Power")
(setf (get msgs_demo::Power :definition-)
      "Header header
bool power


######################
bool ON  = 1
bool OFF = 0

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :msgs_demo/Power "2c1df04c080f2d0a63612b2aeb670955")


