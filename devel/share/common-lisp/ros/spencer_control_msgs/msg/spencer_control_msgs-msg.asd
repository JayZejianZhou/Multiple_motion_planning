
(cl:in-package :asdf)

(defsystem "spencer_control_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SystemStatus" :depends-on ("_package_SystemStatus"))
    (:file "_package_SystemStatus" :depends-on ("_package"))
    (:file "LocalizationStatus" :depends-on ("_package_LocalizationStatus"))
    (:file "_package_LocalizationStatus" :depends-on ("_package"))
    (:file "SafetyRectangle" :depends-on ("_package_SafetyRectangle"))
    (:file "_package_SafetyRectangle" :depends-on ("_package"))
    (:file "CollisionStatus" :depends-on ("_package_CollisionStatus"))
    (:file "_package_CollisionStatus" :depends-on ("_package"))
    (:file "LocalisationStatus" :depends-on ("_package_LocalisationStatus"))
    (:file "_package_LocalisationStatus" :depends-on ("_package"))
    (:file "SetHeadJointPosition" :depends-on ("_package_SetHeadJointPosition"))
    (:file "_package_SetHeadJointPosition" :depends-on ("_package"))
    (:file "ComponentStatus" :depends-on ("_package_ComponentStatus"))
    (:file "_package_ComponentStatus" :depends-on ("_package"))
    (:file "SetHeadJointVelocity" :depends-on ("_package_SetHeadJointVelocity"))
    (:file "_package_SetHeadJointVelocity" :depends-on ("_package"))
  ))