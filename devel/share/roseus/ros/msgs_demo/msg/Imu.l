;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::Imu)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'Imu (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::IMU")
  (make-package "MSGS_DEMO::IMU"))

(in-package "ROS")
;;//! \htmlinclude Imu.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgs_demo::Imu
  :super ros::object
  :slots (_header _orientation _orientation_covariance _angular_velocity _angular_velocity_covariance _linear_acceleration _linear_acceleration_covariance ))

(defmethod msgs_demo::Imu
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:orientation __orientation) (instance msgs_demo::Quaternion :init))
    ((:orientation_covariance __orientation_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:angular_velocity __angular_velocity) (instance msgs_demo::Vector3 :init))
    ((:angular_velocity_covariance __angular_velocity_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:linear_acceleration __linear_acceleration) (instance msgs_demo::Vector3 :init))
    ((:linear_acceleration_covariance __linear_acceleration_covariance) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _orientation __orientation)
   (setq _orientation_covariance __orientation_covariance)
   (setq _angular_velocity __angular_velocity)
   (setq _angular_velocity_covariance __angular_velocity_covariance)
   (setq _linear_acceleration __linear_acceleration)
   (setq _linear_acceleration_covariance __linear_acceleration_covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:orientation_covariance
   (&optional __orientation_covariance)
   (if __orientation_covariance (setq _orientation_covariance __orientation_covariance)) _orientation_covariance)
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:angular_velocity_covariance
   (&optional __angular_velocity_covariance)
   (if __angular_velocity_covariance (setq _angular_velocity_covariance __angular_velocity_covariance)) _angular_velocity_covariance)
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:linear_acceleration_covariance
   (&optional __linear_acceleration_covariance)
   (if __linear_acceleration_covariance (setq _linear_acceleration_covariance __linear_acceleration_covariance)) _linear_acceleration_covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; msgs_demo/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; float64[9] _orientation_covariance
    (* 8    9)
    ;; msgs_demo/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; float64[9] _angular_velocity_covariance
    (* 8    9)
    ;; msgs_demo/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; float64[] _linear_acceleration_covariance
    (* 8    (length _linear_acceleration_covariance)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; msgs_demo/Quaternion _orientation
       (send _orientation :serialize s)
     ;; float64[9] _orientation_covariance
     (dotimes (i 9)
       (sys::poke (elt _orientation_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; msgs_demo/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; float64[9] _angular_velocity_covariance
     (dotimes (i 9)
       (sys::poke (elt _angular_velocity_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; msgs_demo/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; float64[] _linear_acceleration_covariance
     (write-long (length _linear_acceleration_covariance) s)
     (dotimes (i (length _linear_acceleration_covariance))
       (sys::poke (elt _linear_acceleration_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; msgs_demo/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; float64[9] _orientation_covariance
   (dotimes (i (length _orientation_covariance))
     (setf (elt _orientation_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; msgs_demo/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; float64[9] _angular_velocity_covariance
   (dotimes (i (length _angular_velocity_covariance))
     (setf (elt _angular_velocity_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; msgs_demo/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; float64[] _linear_acceleration_covariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _linear_acceleration_covariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _linear_acceleration_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get msgs_demo::Imu :md5sum-) "510e342720397eb6732ae15c52e1758a")
(setf (get msgs_demo::Imu :datatype-) "msgs_demo/Imu")
(setf (get msgs_demo::Imu :definition-)
      "#消息包含了从惯性原件中得到的数据，加速度为m/^2，角速度为rad/s
#如果所有的测量协方差已知，则需要全部填充进来
#如果只知道方差，则只填充协方差矩阵的对角数据即可

#位置：sensor_msgs/Imu.msg

Header header
Quaternion orientation
float64[9] orientation_covariance

Vector3 angular_velocity
float64[9] angular_velocity_covariance

Vector3 linear_acceleration
float64[] linear_acceleration_covariance

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

================================================================================
MSG: msgs_demo/Quaternion
#消息代表空间中旋转的四元数
#位置:geometry_msgs/Quaternion.msg

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: msgs_demo/Vector3
#位置:geometry_msgs/Vector3.msg

float64 x
float64 y
float64 z

")



(provide :msgs_demo/Imu "510e342720397eb6732ae15c52e1758a")


