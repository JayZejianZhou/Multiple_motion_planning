
(cl:in-package :asdf)

(defsystem "spencer_spokesperson_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Spokesperson" :depends-on ("_package_Spokesperson"))
    (:file "_package_Spokesperson" :depends-on ("_package"))
  ))