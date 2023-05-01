; Auto-generated. Do not edit!


(cl:in-package my_package-srv)


;//! \htmlinclude SetRotationMatrix-request.msg.html

(cl:defclass <SetRotationMatrix-request> (roslisp-msg-protocol:ros-message)
  ((r11
    :reader r11
    :initarg :r11
    :type cl:float
    :initform 0.0)
   (r12
    :reader r12
    :initarg :r12
    :type cl:float
    :initform 0.0)
   (r13
    :reader r13
    :initarg :r13
    :type cl:float
    :initform 0.0)
   (r21
    :reader r21
    :initarg :r21
    :type cl:float
    :initform 0.0)
   (r22
    :reader r22
    :initarg :r22
    :type cl:float
    :initform 0.0)
   (r23
    :reader r23
    :initarg :r23
    :type cl:float
    :initform 0.0)
   (r31
    :reader r31
    :initarg :r31
    :type cl:float
    :initform 0.0)
   (r32
    :reader r32
    :initarg :r32
    :type cl:float
    :initform 0.0)
   (r33
    :reader r33
    :initarg :r33
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetRotationMatrix-request (<SetRotationMatrix-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRotationMatrix-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRotationMatrix-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-srv:<SetRotationMatrix-request> is deprecated: use my_package-srv:SetRotationMatrix-request instead.")))

(cl:ensure-generic-function 'r11-val :lambda-list '(m))
(cl:defmethod r11-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r11-val is deprecated.  Use my_package-srv:r11 instead.")
  (r11 m))

(cl:ensure-generic-function 'r12-val :lambda-list '(m))
(cl:defmethod r12-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r12-val is deprecated.  Use my_package-srv:r12 instead.")
  (r12 m))

(cl:ensure-generic-function 'r13-val :lambda-list '(m))
(cl:defmethod r13-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r13-val is deprecated.  Use my_package-srv:r13 instead.")
  (r13 m))

(cl:ensure-generic-function 'r21-val :lambda-list '(m))
(cl:defmethod r21-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r21-val is deprecated.  Use my_package-srv:r21 instead.")
  (r21 m))

(cl:ensure-generic-function 'r22-val :lambda-list '(m))
(cl:defmethod r22-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r22-val is deprecated.  Use my_package-srv:r22 instead.")
  (r22 m))

(cl:ensure-generic-function 'r23-val :lambda-list '(m))
(cl:defmethod r23-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r23-val is deprecated.  Use my_package-srv:r23 instead.")
  (r23 m))

(cl:ensure-generic-function 'r31-val :lambda-list '(m))
(cl:defmethod r31-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r31-val is deprecated.  Use my_package-srv:r31 instead.")
  (r31 m))

(cl:ensure-generic-function 'r32-val :lambda-list '(m))
(cl:defmethod r32-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r32-val is deprecated.  Use my_package-srv:r32 instead.")
  (r32 m))

(cl:ensure-generic-function 'r33-val :lambda-list '(m))
(cl:defmethod r33-val ((m <SetRotationMatrix-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:r33-val is deprecated.  Use my_package-srv:r33 instead.")
  (r33 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRotationMatrix-request>) ostream)
  "Serializes a message object of type '<SetRotationMatrix-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r11))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r12))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r13))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r21))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r22))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r23))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r31))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r32))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r33))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRotationMatrix-request>) istream)
  "Deserializes a message object of type '<SetRotationMatrix-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r11) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r12) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r13) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r21) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r22) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r23) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r31) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r32) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r33) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRotationMatrix-request>)))
  "Returns string type for a service object of type '<SetRotationMatrix-request>"
  "my_package/SetRotationMatrixRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRotationMatrix-request)))
  "Returns string type for a service object of type 'SetRotationMatrix-request"
  "my_package/SetRotationMatrixRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRotationMatrix-request>)))
  "Returns md5sum for a message object of type '<SetRotationMatrix-request>"
  "e26b0831b5184f4a3c0b59f189c892e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRotationMatrix-request)))
  "Returns md5sum for a message object of type 'SetRotationMatrix-request"
  "e26b0831b5184f4a3c0b59f189c892e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRotationMatrix-request>)))
  "Returns full string definition for message of type '<SetRotationMatrix-request>"
  (cl:format cl:nil "float32 r11~%float32 r12~%float32 r13~%float32 r21~%float32 r22~%float32 r23~%float32 r31~%float32 r32~%float32 r33~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRotationMatrix-request)))
  "Returns full string definition for message of type 'SetRotationMatrix-request"
  (cl:format cl:nil "float32 r11~%float32 r12~%float32 r13~%float32 r21~%float32 r22~%float32 r23~%float32 r31~%float32 r32~%float32 r33~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRotationMatrix-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRotationMatrix-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRotationMatrix-request
    (cl:cons ':r11 (r11 msg))
    (cl:cons ':r12 (r12 msg))
    (cl:cons ':r13 (r13 msg))
    (cl:cons ':r21 (r21 msg))
    (cl:cons ':r22 (r22 msg))
    (cl:cons ':r23 (r23 msg))
    (cl:cons ':r31 (r31 msg))
    (cl:cons ':r32 (r32 msg))
    (cl:cons ':r33 (r33 msg))
))
;//! \htmlinclude SetRotationMatrix-response.msg.html

(cl:defclass <SetRotationMatrix-response> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetRotationMatrix-response (<SetRotationMatrix-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRotationMatrix-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRotationMatrix-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-srv:<SetRotationMatrix-response> is deprecated: use my_package-srv:SetRotationMatrix-response instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SetRotationMatrix-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:angle-val is deprecated.  Use my_package-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRotationMatrix-response>) ostream)
  "Serializes a message object of type '<SetRotationMatrix-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRotationMatrix-response>) istream)
  "Deserializes a message object of type '<SetRotationMatrix-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRotationMatrix-response>)))
  "Returns string type for a service object of type '<SetRotationMatrix-response>"
  "my_package/SetRotationMatrixResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRotationMatrix-response)))
  "Returns string type for a service object of type 'SetRotationMatrix-response"
  "my_package/SetRotationMatrixResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRotationMatrix-response>)))
  "Returns md5sum for a message object of type '<SetRotationMatrix-response>"
  "e26b0831b5184f4a3c0b59f189c892e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRotationMatrix-response)))
  "Returns md5sum for a message object of type 'SetRotationMatrix-response"
  "e26b0831b5184f4a3c0b59f189c892e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRotationMatrix-response>)))
  "Returns full string definition for message of type '<SetRotationMatrix-response>"
  (cl:format cl:nil "float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRotationMatrix-response)))
  "Returns full string definition for message of type 'SetRotationMatrix-response"
  (cl:format cl:nil "float32 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRotationMatrix-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRotationMatrix-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRotationMatrix-response
    (cl:cons ':angle (angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRotationMatrix)))
  'SetRotationMatrix-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRotationMatrix)))
  'SetRotationMatrix-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRotationMatrix)))
  "Returns string type for a service object of type '<SetRotationMatrix>"
  "my_package/SetRotationMatrix")