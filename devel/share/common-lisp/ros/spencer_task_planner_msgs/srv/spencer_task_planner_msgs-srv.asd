
(cl:in-package :asdf)

(defsystem "spencer_task_planner_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoHome" :depends-on ("_package_GoHome"))
    (:file "_package_GoHome" :depends-on ("_package"))
    (:file "StartGuidance" :depends-on ("_package_StartGuidance"))
    (:file "_package_StartGuidance" :depends-on ("_package"))
  ))