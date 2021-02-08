;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::Pose)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'Pose (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::POSE")
  (make-package "MSGS_DEMO::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html


(defclass msgs_demo::Pose
  :super ros::object
  :slots (_position _orientation ))

(defmethod msgs_demo::Pose
  (:init
   (&key
    ((:position __position) (instance msgs_demo::Point :init))
    ((:orientation __orientation) (instance msgs_demo::Quaternion :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; msgs_demo/Point _position
    (send _position :serialization-length)
    ;; msgs_demo/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; msgs_demo/Point _position
       (send _position :serialize s)
     ;; msgs_demo/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; msgs_demo/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; msgs_demo/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get msgs_demo::Pose :md5sum-) "e45d45a5a1ce597b249e23fb30fc871f")
(setf (get msgs_demo::Pose :datatype-) "msgs_demo/Pose")
(setf (get msgs_demo::Pose :definition-)
      "#消息定义自由空间中的位姿信息，包括位置和指向信息
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



(provide :msgs_demo/Pose "e45d45a5a1ce597b249e23fb30fc871f")


