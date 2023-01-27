
(cl:in-package :asdf)

(defsystem "servecommunicate-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mydata" :depends-on ("_package_mydata"))
    (:file "_package_mydata" :depends-on ("_package"))
  ))