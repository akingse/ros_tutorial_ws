;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::TwistWithCovariance)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'TwistWithCovariance (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::TWISTWITHCOVARIANCE")
  (make-package "MSGS_DEMO::TWISTWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude TwistWithCovariance.msg.html


(defclass msgs_demo::TwistWithCovariance
  :super ros::object
  :slots (_twist _covariance ))

(defmethod msgs_demo::TwistWithCovariance
  (:init
   (&key
    ((:twist __twist) (instance msgs_demo::Twist :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _twist __twist)
   (setq _covariance __covariance)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; msgs_demo/Twist _twist
    (send _twist :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; msgs_demo/Twist _twist
       (send _twist :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; msgs_demo/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get msgs_demo::TwistWithCovariance :md5sum-) "1fe8a28e6890a4cc3ae4c3ca5c7d82e6")
(setf (get msgs_demo::TwistWithCovariance :datatype-) "msgs_demo/TwistWithCovariance")
(setf (get msgs_demo::TwistWithCovariance :definition-)
      "#消息定义了包含不确定性的速度量，协方差矩阵按行分别表示：
#沿x方向速度的不确定性，沿y方向速度的不确定性，沿z方向速度的不确定性
#绕x转动角速度的不确定性，绕y轴转动的角速度的不确定性，绕z轴转动的角速度的不确定性

#位置：geometry_msgs/TwistWithCovariance.msg

Twist twist
float64[36] covariance  #分别表示[x; y; z; Rx; Ry; Rz]

================================================================================
MSG: msgs_demo/Twist
#定义空间中物体运动的线速度和角速度
#位置：geometry_msgs/Twist.msg

Vector3 linear
Vector3 angular

================================================================================
MSG: msgs_demo/Vector3
#位置:geometry_msgs/Vector3.msg

float64 x
float64 y
float64 z

")



(provide :msgs_demo/TwistWithCovariance "1fe8a28e6890a4cc3ae4c3ca5c7d82e6")


