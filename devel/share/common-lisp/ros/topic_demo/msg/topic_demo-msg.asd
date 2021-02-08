
(cl:in-package :asdf)

(defsystem "topic_demo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gps" :depends-on ("_package_gps"))
    (:file "_package_gps" :depends-on ("_package"))
  ))