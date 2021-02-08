;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::Echos)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'Echos (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::ECHOS")
  (make-package "MSGS_DEMO::ECHOS"))

(in-package "ROS")
;;//! \htmlinclude Echos.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_demo::Echos
  :super ros::object
  :slots (_header _front_left _front_center _front_right _rear_left _rear_center _rear_right ))

(defmethod msgs_demo::Echos
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_left __front_left) 0)
    ((:front_center __front_center) 0)
    ((:front_right __front_right) 0)
    ((:rear_left __rear_left) 0)
    ((:rear_center __rear_center) 0)
    ((:rear_right __rear_right) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_left (round __front_left))
   (setq _front_center (round __front_center))
   (setq _front_right (round __front_right))
   (setq _rear_left (round __rear_left))
   (setq _rear_center (round __rear_center))
   (setq _rear_right (round __rear_right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:front_center
   (&optional __front_center)
   (if __front_center (setq _front_center __front_center)) _front_center)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:rear_left
   (&optional __rear_left)
   (if __rear_left (setq _rear_left __rear_left)) _rear_left)
  (:rear_center
   (&optional __rear_center)
   (if __rear_center (setq _rear_center __rear_center)) _rear_center)
  (:rear_right
   (&optional __rear_right)
   (if __rear_right (setq _rear_right __rear_right)) _rear_right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _front_left
    2
    ;; uint16 _front_center
    2
    ;; uint16 _front_right
    2
    ;; uint16 _rear_left
    2
    ;; uint16 _rear_center
    2
    ;; uint16 _rear_right
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _front_left
       (write-word _front_left s)
     ;; uint16 _front_center
       (write-word _front_center s)
     ;; uint16 _front_right
       (write-word _front_right s)
     ;; uint16 _rear_left
       (write-word _rear_left s)
     ;; uint16 _rear_center
       (write-word _rear_center s)
     ;; uint16 _rear_right
       (write-word _rear_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _front_left
     (setq _front_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _front_center
     (setq _front_center (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _front_right
     (setq _front_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rear_left
     (setq _rear_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rear_center
     (setq _rear_center (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rear_right
     (setq _rear_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get msgs_demo::Echos :md5sum-) "41b4a21d92f5fd9f5c8f7dc9c07e154a")
(setf (get msgs_demo::Echos :datatype-) "msgs_demo/Echos")
(setf (get msgs_demo::Echos :definition-)
      "Header header
uint16 front_left
uint16 front_center
uint16 front_right
uint16 rear_left
uint16 rear_center
uint16 rear_right

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



(provide :msgs_demo/Echos "41b4a21d92f5fd9f5c8f7dc9c07e154a")


