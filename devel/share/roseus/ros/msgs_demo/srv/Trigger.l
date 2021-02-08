;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::Trigger)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'Trigger (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::TRIGGER")
  (make-package "MSGS_DEMO::TRIGGER"))
(unless (find-package "MSGS_DEMO::TRIGGERREQUEST")
  (make-package "MSGS_DEMO::TRIGGERREQUEST"))
(unless (find-package "MSGS_DEMO::TRIGGERRESPONSE")
  (make-package "MSGS_DEMO::TRIGGERRESPONSE"))

(in-package "ROS")





(defclass msgs_demo::TriggerRequest
  :super ros::object
  :slots ())

(defmethod msgs_demo::TriggerRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass msgs_demo::TriggerResponse
  :super ros::object
  :slots (_success _message ))

(defmethod msgs_demo::TriggerResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass msgs_demo::Trigger
  :super ros::object
  :slots ())

(setf (get msgs_demo::Trigger :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get msgs_demo::Trigger :datatype-) "msgs_demo/Trigger")
(setf (get msgs_demo::Trigger :request) msgs_demo::TriggerRequest)
(setf (get msgs_demo::Trigger :response) msgs_demo::TriggerResponse)

(defmethod msgs_demo::TriggerRequest
  (:response () (instance msgs_demo::TriggerResponse :init)))

(setf (get msgs_demo::TriggerRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get msgs_demo::TriggerRequest :datatype-) "msgs_demo/TriggerRequest")
(setf (get msgs_demo::TriggerRequest :definition-)
      "---
bool success
string message

")

(setf (get msgs_demo::TriggerResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get msgs_demo::TriggerResponse :datatype-) "msgs_demo/TriggerResponse")
(setf (get msgs_demo::TriggerResponse :definition-)
      "---
bool success
string message

")



(provide :msgs_demo/Trigger "937c9679a518e3a18d831e57125ea522")


