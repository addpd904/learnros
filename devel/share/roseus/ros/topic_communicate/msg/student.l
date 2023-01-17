;; Auto-generated. Do not edit!


(when (boundp 'topic_communicate::student)
  (if (not (find-package "TOPIC_COMMUNICATE"))
    (make-package "TOPIC_COMMUNICATE"))
  (shadow 'student (find-package "TOPIC_COMMUNICATE")))
(unless (find-package "TOPIC_COMMUNICATE::STUDENT")
  (make-package "TOPIC_COMMUNICATE::STUDENT"))

(in-package "ROS")
;;//! \htmlinclude student.msg.html


(defclass topic_communicate::student
  :super ros::object
  :slots (_name _age _enscore ))

(defmethod topic_communicate::student
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:enscore __enscore) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _enscore (float __enscore))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:enscore
   (&optional __enscore)
   (if __enscore (setq _enscore __enscore)) _enscore)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint16 _age
    2
    ;; float64 _enscore
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint16 _age
       (write-word _age s)
     ;; float64 _enscore
       (sys::poke _enscore (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _age
     (setq _age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _enscore
     (setq _enscore (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get topic_communicate::student :md5sum-) "458939fb31b88c5953c7109c2c977d88")
(setf (get topic_communicate::student :datatype-) "topic_communicate/student")
(setf (get topic_communicate::student :definition-)
      "string name
uint16 age
float64 enscore
")



(provide :topic_communicate/student "458939fb31b88c5953c7109c2c977d88")


