; Auto-generated. Do not edit!


(cl:in-package servecommunicate-srv)


;//! \htmlinclude mydata-request.msg.html

(cl:defclass <mydata-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass mydata-request (<mydata-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mydata-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mydata-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servecommunicate-srv:<mydata-request> is deprecated: use servecommunicate-srv:mydata-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <mydata-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servecommunicate-srv:num1-val is deprecated.  Use servecommunicate-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <mydata-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servecommunicate-srv:num2-val is deprecated.  Use servecommunicate-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mydata-request>) ostream)
  "Serializes a message object of type '<mydata-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mydata-request>) istream)
  "Deserializes a message object of type '<mydata-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mydata-request>)))
  "Returns string type for a service object of type '<mydata-request>"
  "servecommunicate/mydataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mydata-request)))
  "Returns string type for a service object of type 'mydata-request"
  "servecommunicate/mydataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mydata-request>)))
  "Returns md5sum for a message object of type '<mydata-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mydata-request)))
  "Returns md5sum for a message object of type 'mydata-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mydata-request>)))
  "Returns full string definition for message of type '<mydata-request>"
  (cl:format cl:nil "# for calculate sum of two numbers~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mydata-request)))
  "Returns full string definition for message of type 'mydata-request"
  (cl:format cl:nil "# for calculate sum of two numbers~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mydata-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mydata-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mydata-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude mydata-response.msg.html

(cl:defclass <mydata-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass mydata-response (<mydata-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mydata-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mydata-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servecommunicate-srv:<mydata-response> is deprecated: use servecommunicate-srv:mydata-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <mydata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servecommunicate-srv:sum-val is deprecated.  Use servecommunicate-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mydata-response>) ostream)
  "Serializes a message object of type '<mydata-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mydata-response>) istream)
  "Deserializes a message object of type '<mydata-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mydata-response>)))
  "Returns string type for a service object of type '<mydata-response>"
  "servecommunicate/mydataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mydata-response)))
  "Returns string type for a service object of type 'mydata-response"
  "servecommunicate/mydataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mydata-response>)))
  "Returns md5sum for a message object of type '<mydata-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mydata-response)))
  "Returns md5sum for a message object of type 'mydata-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mydata-response>)))
  "Returns full string definition for message of type '<mydata-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mydata-response)))
  "Returns full string definition for message of type 'mydata-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mydata-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mydata-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mydata-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mydata)))
  'mydata-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mydata)))
  'mydata-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mydata)))
  "Returns string type for a service object of type '<mydata>"
  "servecommunicate/mydata")