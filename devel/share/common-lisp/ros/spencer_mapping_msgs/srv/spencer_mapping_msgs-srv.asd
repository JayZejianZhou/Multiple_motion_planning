
(cl:in-package :asdf)

(defsystem "spencer_mapping_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :spencer_mapping_msgs-msg
)
  :components ((:file "_package")
    (:file "SetInterestRegion" :depends-on ("_package_SetInterestRegion"))
    (:file "_package_SetInterestRegion" :depends-on ("_package"))
    (:file "Label" :depends-on ("_package_Label"))
    (:file "_package_Label" :depends-on ("_package"))
    (:file "Labels" :depends-on ("_package_Labels"))
    (:file "_package_Labels" :depends-on ("_package"))
  ))