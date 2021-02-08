;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::Accel)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'Accel (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::ACCEL")
  (make-package "MSGS_DEMO::ACCEL"))

(in-package "ROS")
;;//! \htmlinclude Accel.msg.html


(defclass msgs_demo::Accel
  :super ros::object
  :slots (_linear _angular ))

(defmethod msgs_demo::Accel
  (:init
   (&key
    ((:linear __linear) (instance msgs_demo::Vector3 :init))
    ((:angular __angular) (instance msgs_demo::Vector3 :init))
    )
   (send-super :init)
   (setq _linear __linear)
   (setq _angular __angular)
   self)
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; msgs_demo/Vector3 _linear
    (send _linear :serialization-length)
    ;; msgs_demo/Vector3 _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; msgs_demo/Vector3 _linear
       (send _linear :serialize s)
     ;; msgs_demo/Vector3 _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; msgs_demo/Vector3 _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; msgs_demo/Vector3 _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get msgs_demo::Accel :md5sum-) "9f195f881246fdfa2798d1d3eebca84a")
(setf (get msgs_demo::Accel :datatype-) "msgs_demo/Accel")
(setf (get msgs_demo::Accel :definition-)
      "#定义加速度项，包括线性加速度和角加速度
Vector3 linear
Vector3 angular

================================================================================
MSG: msgs_demo/Vector3
#位置:geometry_msgs/Vector3.msg

float64 x
float64 y
float64 z

")



(provide :msgs_demo/Accel "9f195f881246fdfa2798d1d3eebca84a")


