
(cl:in-package :asdf)

(defsystem "spencer_task_planner_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GuidanceStatus" :depends-on ("_package_GuidanceStatus"))
    (:file "_package_GuidanceStatus" :depends-on ("_package"))
  ))