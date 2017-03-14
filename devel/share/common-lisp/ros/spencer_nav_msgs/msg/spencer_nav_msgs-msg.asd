
(cl:in-package :asdf)

(defsystem "spencer_nav_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :spencer_mapping_msgs-msg
               :spencer_tracking_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "NavigationPlanRequestTopological" :depends-on ("_package_NavigationPlanRequestTopological"))
    (:file "_package_NavigationPlanRequestTopological" :depends-on ("_package"))
    (:file "NavigationPlanRequestGeometric" :depends-on ("_package_NavigationPlanRequestGeometric"))
    (:file "_package_NavigationPlanRequestGeometric" :depends-on ("_package"))
    (:file "NavParams" :depends-on ("_package_NavParams"))
    (:file "_package_NavParams" :depends-on ("_package"))
  ))