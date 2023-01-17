; Auto-generated. Do not edit!


(cl:in-package topic_communicate-msg)


;//! \htmlinclude student.msg.html

(cl:defclass <student> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (enscore
    :reader enscore
    :initarg :enscore
    :type cl:float
    :initform 0.0))
)

(cl:defclass student (<student>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <student>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'student)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_communicate-msg:<student> is deprecated: use topic_communicate-msg:student instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_communicate-msg:name-val is deprecated.  Use topic_communicate-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_communicate-msg:age-val is deprecated.  Use topic_communicate-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'enscore-val :lambda-list '(m))
(cl:defmethod enscore-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_communicate-msg:enscore-val is deprecated.  Use topic_communicate-msg:enscore instead.")
  (enscore m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <student>) ostream)
  "Serializes a message object of type '<student>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'enscore))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <student>) istream)
  "Deserializes a message object of type '<student>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enscore) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<student>)))
  "Returns string type for a message object of type '<student>"
  "topic_communicate/student")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'student)))
  "Returns string type for a message object of type 'student"
  "topic_communicate/student")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<student>)))
  "Returns md5sum for a message object of type '<student>"
  "458939fb31b88c5953c7109c2c977d88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'student)))
  "Returns md5sum for a message object of type 'student"
  "458939fb31b88c5953c7109c2c977d88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<student>)))
  "Returns full string definition for message of type '<student>"
  (cl:format cl:nil "string name~%uint16 age~%float64 enscore~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'student)))
  "Returns full string definition for message of type 'student"
  (cl:format cl:nil "string name~%uint16 age~%float64 enscore~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <student>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <student>))
  "Converts a ROS message object to a list"
  (cl:list 'student
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':enscore (enscore msg))
))
