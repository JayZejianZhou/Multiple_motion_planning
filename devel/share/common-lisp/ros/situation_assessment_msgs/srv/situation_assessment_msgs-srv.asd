
(cl:in-package :asdf)

(defsystem "situation_assessment_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :situation_assessment_msgs-msg
)
  :components ((:file "_package")
    (:file "NameRequest" :depends-on ("_package_NameRequest"))
    (:file "_package_NameRequest" :depends-on ("_package"))
    (:file "QueryDatabase" :depends-on ("_package_QueryDatabase"))
    (:file "_package_QueryDatabase" :depends-on ("_package"))
    (:file "GetMap" :depends-on ("_package_GetMap"))
    (:file "_package_GetMap" :depends-on ("_package"))
    (:file "AddArea" :depends-on ("_package_AddArea"))
    (:file "_package_AddArea" :depends-on ("_package"))
    (:file "AddObject" :depends-on ("_package_AddObject"))
    (:file "_package_AddObject" :depends-on ("_package"))
    (:file "SwitchOrientation" :depends-on ("_package_SwitchOrientation"))
    (:file "_package_SwitchOrientation" :depends-on ("_package"))
    (:file "EmptyRequest" :depends-on ("_package_EmptyRequest"))
    (:file "_package_EmptyRequest" :depends-on ("_package"))
    (:file "GetLocations" :depends-on ("_package_GetLocations"))
    (:file "_package_GetLocations" :depends-on ("_package"))
    (:file "DatabaseRequest" :depends-on ("_package_DatabaseRequest"))
    (:file "_package_DatabaseRequest" :depends-on ("_package"))
  ))