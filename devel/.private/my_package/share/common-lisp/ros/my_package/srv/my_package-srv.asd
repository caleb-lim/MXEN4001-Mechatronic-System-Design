
(cl:in-package :asdf)

(defsystem "my_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetRotationMatrix" :depends-on ("_package_SetRotationMatrix"))
    (:file "_package_SetRotationMatrix" :depends-on ("_package"))
  ))