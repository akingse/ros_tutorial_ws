;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::SetBool)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'SetBool (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::SETBOOL")
  (make-package "MSGS_DEMO::SETBOOL"))
(unless (find-package "MSGS_DEMO::SETBOOLREQUEST")
  (make-package "MSGS_DEMO::SETBOOLREQUEST"))
(unless (find-package "MSGS_DEMO::SETBOOLRESPONSE")
  (make-package "MSGS_DEMO::SETBOOLRESPONSE"))

(in-package "ROS")





(defclass msgs_demo::SetBoolRequest
  :super ros::object
  :slots (_data ))

(defmethod msgs_demo::SetBoolRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass msgs_demo::SetBoolResponse
  :super ros::object
  :slots (_success _message ))

(defmethod msgs_demo::SetBoolResponse
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

(defclass msgs_demo::SetBool
  :super ros::object
  :slots ())

(setf (get msgs_demo::SetBool :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get msgs_demo::SetBool :datatype-) "msgs_demo/SetBool")
(setf (get msgs_demo::SetBool :request) msgs_demo::SetBoolRequest)
(setf (get msgs_demo::SetBool :response) msgs_demo::SetBoolResponse)

(defmethod msgs_demo::SetBoolRequest
  (:response () (instance msgs_demo::SetBoolResponse :init)))

(setf (get msgs_demo::SetBoolRequest :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get msgs_demo::SetBoolRequest :datatype-) "msgs_demo/SetBoolRequest")
(setf (get msgs_demo::SetBoolRequest :definition-)
      "bool data
---
bool success
string message

")

(setf (get msgs_demo::SetBoolResponse :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get msgs_demo::SetBoolResponse :datatype-) "msgs_demo/SetBoolResponse")
(setf (get msgs_demo::SetBoolResponse :definition-)
      "bool data
---
bool success
string message

")



(provide :msgs_demo/SetBool "09fb03525b03e7ea1fd3992bafd87e16")


