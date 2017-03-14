
(cl:in-package :asdf)

(defsystem "spencer_nav_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetDrivingDirection" :depends-on ("_package_SetDrivingDirection"))
    (:file "_package_SetDrivingDirection" :depends-on ("_package"))
    (:file "StopDriving" :depends-on ("_package_StopDriving"))
    (:file "_package_StopDriving" :depends-on ("_package"))
  ))