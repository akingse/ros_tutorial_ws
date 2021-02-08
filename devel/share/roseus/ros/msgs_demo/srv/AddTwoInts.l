;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::AddTwoInts)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'AddTwoInts (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::ADDTWOINTS")
  (make-package "MSGS_DEMO::ADDTWOINTS"))
(unless (find-package "MSGS_DEMO::ADDTWOINTSREQUEST")
  (make-package "MSGS_DEMO::ADDTWOINTSREQUEST"))
(unless (find-package "MSGS_DEMO::ADDTWOINTSRESPONSE")
  (make-package "MSGS_DEMO::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass msgs_demo::AddTwoIntsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod msgs_demo::AddTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass msgs_demo::AddTwoIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod msgs_demo::AddTwoIntsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass msgs_demo::AddTwoInts
  :super ros::object
  :slots ())

(setf (get msgs_demo::AddTwoInts :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get msgs_demo::AddTwoInts :datatype-) "msgs_demo/AddTwoInts")
(setf (get msgs_demo::AddTwoInts :request) msgs_demo::AddTwoIntsRequest)
(setf (get msgs_demo::AddTwoInts :response) msgs_demo::AddTwoIntsResponse)

(defmethod msgs_demo::AddTwoIntsRequest
  (:response () (instance msgs_demo::AddTwoIntsResponse :init)))

(setf (get msgs_demo::AddTwoIntsRequest :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get msgs_demo::AddTwoIntsRequest :datatype-) "msgs_demo/AddTwoIntsRequest")
(setf (get msgs_demo::AddTwoIntsRequest :definition-)
      "
int32 a
int32 b
---
int32 sum

")

(setf (get msgs_demo::AddTwoIntsResponse :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get msgs_demo::AddTwoIntsResponse :datatype-) "msgs_demo/AddTwoIntsResponse")
(setf (get msgs_demo::AddTwoIntsResponse :definition-)
      "
int32 a
int32 b
---
int32 sum

")



(provide :msgs_demo/AddTwoInts "f0b6d69ea10b0cf210cb349d58d59e8f")


