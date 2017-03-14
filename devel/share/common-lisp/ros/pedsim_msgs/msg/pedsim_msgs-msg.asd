
(cl:in-package :asdf)

(defsystem "pedsim_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AllAgentsState" :depends-on ("_package_AllAgentsState"))
    (:file "_package_AllAgentsState" :depends-on ("_package"))
    (:file "SocialActivities" :depends-on ("_package_SocialActivities"))
    (:file "_package_SocialActivities" :depends-on ("_package"))
    (:file "TrackedPerson" :depends-on ("_package_TrackedPerson"))
    (:file "_package_TrackedPerson" :depends-on ("_package"))
    (:file "TrackedGroup" :depends-on ("_package_TrackedGroup"))
    (:file "_package_TrackedGroup" :depends-on ("_package"))
    (:file "TrackedGroups" :depends-on ("_package_TrackedGroups"))
    (:file "_package_TrackedGroups" :depends-on ("_package"))
    (:file "TrackedPersons" :depends-on ("_package_TrackedPersons"))
    (:file "_package_TrackedPersons" :depends-on ("_package"))
    (:file "SocialActivity" :depends-on ("_package_SocialActivity"))
    (:file "_package_SocialActivity" :depends-on ("_package"))
    (:file "SocialRelations" :depends-on ("_package_SocialRelations"))
    (:file "_package_SocialRelations" :depends-on ("_package"))
    (:file "SocialRelation" :depends-on ("_package_SocialRelation"))
    (:file "_package_SocialRelation" :depends-on ("_package"))
    (:file "AgentState" :depends-on ("_package_AgentState"))
    (:file "_package_AgentState" :depends-on ("_package"))
  ))