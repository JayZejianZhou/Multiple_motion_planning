
(cl:in-package :asdf)

(defsystem "supervision_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CalculatePath" :depends-on ("_package_CalculatePath"))
    (:file "_package_CalculatePath" :depends-on ("_package"))
    (:file "ChangeDestination" :depends-on ("_package_ChangeDestination"))
    (:file "_package_ChangeDestination" :depends-on ("_package"))
    (:file "GetConnectedNodes" :depends-on ("_package_GetConnectedNodes"))
    (:file "_package_GetConnectedNodes" :depends-on ("_package"))
    (:file "SetRobotSimStatus" :depends-on ("_package_SetRobotSimStatus"))
    (:file "_package_SetRobotSimStatus" :depends-on ("_package"))
    (:file "EmptyRequest" :depends-on ("_package_EmptyRequest"))
    (:file "_package_EmptyRequest" :depends-on ("_package"))
  ))