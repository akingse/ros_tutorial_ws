
(cl:in-package :asdf)

(defsystem "msgs_demo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "Empty" :depends-on ("_package_Empty"))
    (:file "_package_Empty" :depends-on ("_package"))
    (:file "GetMap" :depends-on ("_package_GetMap"))
    (:file "_package_GetMap" :depends-on ("_package"))
    (:file "GetPlan" :depends-on ("_package_GetPlan"))
    (:file "_package_GetPlan" :depends-on ("_package"))
    (:file "SetBool" :depends-on ("_package_SetBool"))
    (:file "_package_SetBool" :depends-on ("_package"))
    (:file "SetCameraInfo" :depends-on ("_package_SetCameraInfo"))
    (:file "_package_SetCameraInfo" :depends-on ("_package"))
    (:file "SetMap" :depends-on ("_package_SetMap"))
    (:file "_package_SetMap" :depends-on ("_package"))
    (:file "TalkerListener" :depends-on ("_package_TalkerListener"))
    (:file "_package_TalkerListener" :depends-on ("_package"))
    (:file "Trigger" :depends-on ("_package_Trigger"))
    (:file "_package_Trigger" :depends-on ("_package"))
  ))