;; Auto-generated. Do not edit!


(when (boundp 'servecommunicate::mydata)
  (if (not (find-package "SERVECOMMUNICATE"))
    (make-package "SERVECOMMUNICATE"))
  (shadow 'mydata (find-package "SERVECOMMUNICATE")))
(unless (find-package "SERVECOMMUNICATE::MYDATA")
  (make-package "SERVECOMMUNICATE::MYDATA"))
(unless (find-package "SERVECOMMUNICATE::MYDATAREQUEST")
  (make-package "SERVECOMMUNICATE::MYDATAREQUEST"))
(unless (find-package "SERVECOMMUNICATE::MYDATARESPONSE")
  (make-package "SERVECOMMUNICATE::MYDATARESPONSE"))

(in-package "ROS")





(defclass servecommunicate::mydataRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod servecommunicate::mydataRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass servecommunicate::mydataResponse
  :super ros::object
  :slots (_sum ))

(defmethod servecommunicate::mydataResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass servecommunicate::mydata
  :super ros::object
  :slots ())

(setf (get servecommunicate::mydata :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get servecommunicate::mydata :datatype-) "servecommunicate/mydata")
(setf (get servecommunicate::mydata :request) servecommunicate::mydataRequest)
(setf (get servecommunicate::mydata :response) servecommunicate::mydataResponse)

(defmethod servecommunicate::mydataRequest
  (:response () (instance servecommunicate::mydataResponse :init)))

(setf (get servecommunicate::mydataRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get servecommunicate::mydataRequest :datatype-) "servecommunicate/mydataRequest")
(setf (get servecommunicate::mydataRequest :definition-)
      "# for calculate sum of two numbers
int32 num1
int32 num2
---
int32 sum
")

(setf (get servecommunicate::mydataResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get servecommunicate::mydataResponse :datatype-) "servecommunicate/mydataResponse")
(setf (get servecommunicate::mydataResponse :definition-)
      "# for calculate sum of two numbers
int32 num1
int32 num2
---
int32 sum
")



(provide :servecommunicate/mydata "4781436a0c2affec8025955a6041e481")


