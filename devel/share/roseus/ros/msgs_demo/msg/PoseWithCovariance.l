;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::PoseWithCovariance)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'PoseWithCovariance (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::POSEWITHCOVARIANCE")
  (make-package "MSGS_DEMO::POSEWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude PoseWithCovariance.msg.html


(defclass msgs_demo::PoseWithCovariance
  :super ros::object
  :slots (_pose _covariance ))

(defmethod msgs_demo::PoseWithCovariance
  (:init
   (&key
    ((:pose __pose) (instance msgs_demo::Pose :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _covariance __covariance)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; msgs_demo/Pose _pose
    (send _pose :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; msgs_demo/Pose _pose
       (send _pose :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; msgs_demo/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get msgs_demo::PoseWithCovariance :md5sum-) "c23e848cf1b7533a8d7c259073a97e6f")
(setf (get msgs_demo::PoseWithCovariance :datatype-) "msgs_demo/PoseWithCovariance")
(setf (get msgs_demo::PoseWithCovariance :definition-)
      "#表示空间中含有不确定性的位姿信息
#位置：geometry_msgs/PoseWithCovariance.msg

Pose pose
float64[36] covariance

================================================================================
MSG: msgs_demo/Pose
#消息定义自由空间中的位姿信息，包括位置和指向信息
#位置:geometry_msgs/Pose.msg

Point position
Quaternion orientation

================================================================================
MSG: msgs_demo/Point
#空间中的点的位置
#位置:geometry_msgs/Point.msg

float64 x
float64 y
float64 z

================================================================================
MSG: msgs_demo/Quaternion
#消息代表空间中旋转的四元数
#位置:geometry_msgs/Quaternion.msg

float64 x
float64 y
float64 z
float64 w

")



(provide :msgs_demo/PoseWithCovariance "c23e848cf1b7533a8d7c259073a97e6f")


