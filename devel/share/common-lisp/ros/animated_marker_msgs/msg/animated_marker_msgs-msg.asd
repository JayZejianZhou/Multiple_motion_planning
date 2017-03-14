
(cl:in-package :asdf)

(defsystem "animated_marker_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AnimatedMarkerArray" :depends-on ("_package_AnimatedMarkerArray"))
    (:file "_package_AnimatedMarkerArray" :depends-on ("_package"))
    (:file "AnimatedMarker" :depends-on ("_package_AnimatedMarker"))
    (:file "_package_AnimatedMarker" :depends-on ("_package"))
  ))