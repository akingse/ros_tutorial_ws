;; Auto-generated. Do not edit!


(when (boundp 'msgs_demo::Empty)
  (if (not (find-package "MSGS_DEMO"))
    (make-package "MSGS_DEMO"))
  (shadow 'Empty (find-package "MSGS_DEMO")))
(unless (find-package "MSGS_DEMO::EMPTY")
  (make-package "MSGS_DEMO::EMPTY"))
(unless (find-package "MSGS_DEMO::EMPTYREQUEST")
  (make-package "MSGS_DEMO::EMPTYREQUEST"))
(unless (find-package "MSGS_DEMO::EMPTYRESPONSE")
  (make-package "MSGS_DEMO::EMPTYRESPONSE"))

(in-package "ROS")





(defclass msgs_demo::EmptyRequest
  :super ros::object
  :slots ())

(defmethod msgs_demo::EmptyRequest
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

(defclass msgs_demo::EmptyResponse
  :super ros::object
  :slots ())

(defmethod msgs_demo::EmptyResponse
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

(defclass msgs_demo::Empty
  :super ros::object
  :slots ())

(setf (get msgs_demo::Empty :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get msgs_demo::Empty :datatype-) "msgs_demo/Empty")
(setf (get msgs_demo::Empty :request) msgs_demo::EmptyRequest)
(setf (get msgs_demo::Empty :response) msgs_demo::EmptyResponse)

(defmethod msgs_demo::EmptyRequest
  (:response () (instance msgs_demo::EmptyResponse :init)))

(setf (get msgs_demo::EmptyRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get msgs_demo::EmptyRequest :datatype-) "msgs_demo/EmptyRequest")
(setf (get msgs_demo::EmptyRequest :definition-)
      "

---

")

(setf (get msgs_demo::EmptyResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get msgs_demo::EmptyResponse :datatype-) "msgs_demo/EmptyResponse")
(setf (get msgs_demo::EmptyResponse :definition-)
      "

---

")



(provide :msgs_demo/Empty "d41d8cd98f00b204e9800998ecf8427e")


