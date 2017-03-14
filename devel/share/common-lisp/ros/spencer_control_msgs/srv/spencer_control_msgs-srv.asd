
(cl:in-package :asdf)

(defsystem "spencer_control_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ReleaseEmergencyStop" :depends-on ("_package_ReleaseEmergencyStop"))
    (:file "_package_ReleaseEmergencyStop" :depends-on ("_package"))
    (:file "GetMaxVelocity" :depends-on ("_package_GetMaxVelocity"))
    (:file "_package_GetMaxVelocity" :depends-on ("_package"))
    (:file "SetEmergencyStop" :depends-on ("_package_SetEmergencyStop"))
    (:file "_package_SetEmergencyStop" :depends-on ("_package"))
    (:file "SetMaxVelocity" :depends-on ("_package_SetMaxVelocity"))
    (:file "_package_SetMaxVelocity" :depends-on ("_package"))
  ))