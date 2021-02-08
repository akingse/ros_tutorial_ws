;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::TalkerListener)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'TalkerListener (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::TALKERLISTENER")
  (make-package "MSGS_DEMO::TALKERLISTENER"))
(unless (find-package "MSGS_DEMO::TALKERLISTENERREQUEST")
  (make-package "MSGS_DEMO::TALKERLISTENERREQUEST"))
(unless (find-package "MSGS_DEMO::TALKERLISTENERRESPONSE")
  (make-package "MSGS_DEMO::TALKERLISTENERRESPONSE"))

(in-package "ROS")





(defclass msgs_demo::TalkerListenerRequest
  :super ros::object
  :slots (_request ))

(defmethod msgs_demo::TalkerListenerRequest
  (:init
   (&key
    ((:request __request) "")
    )
   (send-super :init)
   (setq _request (string __request))
   self)
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; string _request
    4 (length _request)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request
       (write-long (length _request) s) (princ _request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass msgs_demo::TalkerListenerResponse
  :super ros::object
  :slots (_response ))

(defmethod msgs_demo::TalkerListenerResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass msgs_demo::TalkerListener
  :super ros::object
  :slots ())

(setf (get msgs_demo::TalkerListener :md5sum-) "33ea4e5aeb30f5913da681ca459d55f3")
(setf (get msgs_demo::TalkerListener :datatype-) "msgs_demo/TalkerListener")
(setf (get msgs_demo::TalkerListener :request) msgs_demo::TalkerListenerRequest)
(setf (get msgs_demo::TalkerListener :response) msgs_demo::TalkerListenerResponse)

(defmethod msgs_demo::TalkerListenerRequest
  (:response () (instance msgs_demo::TalkerListenerResponse :init)))

(setf (get msgs_demo::TalkerListenerRequest :md5sum-) "33ea4e5aeb30f5913da681ca459d55f3")
(setf (get msgs_demo::TalkerListenerRequest :datatype-) "msgs_demo/TalkerListenerRequest")
(setf (get msgs_demo::TalkerListenerRequest :definition-)
      "


string request
---
string response

")

(setf (get msgs_demo::TalkerListenerResponse :md5sum-) "33ea4e5aeb30f5913da681ca459d55f3")
(setf (get msgs_demo::TalkerListenerResponse :datatype-) "msgs_demo/TalkerListenerResponse")
(setf (get msgs_demo::TalkerListenerResponse :definition-)
      "


string request
---
string response

")



(provide :msgs_demo/TalkerListener "33ea4e5aeb30f5913da681ca459d55f3")


