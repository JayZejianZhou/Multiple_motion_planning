; Auto-generated. Do not edit!


(cl:in-package supervision_msgs-srv)


;//! \htmlinclude CalculatePath-request.msg.html

(cl:defclass <CalculatePath-request> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (dest
    :reader dest
    :initarg :dest
    :type cl:string
    :initform ""))
)

(cl:defclass CalculatePath-request (<CalculatePath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculatePath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculatePath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-srv:<CalculatePath-request> is deprecated: use supervision_msgs-srv:CalculatePath-request instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <CalculatePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:source-val is deprecated.  Use supervision_msgs-srv:source instead.")
  (source m))

(cl:ensure-generic-function 'dest-val :lambda-list '(m))
(cl:defmethod dest-val ((m <CalculatePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:dest-val is deprecated.  Use supervision_msgs-srv:dest instead.")
  (dest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculatePath-request>) ostream)
  "Serializes a message object of type '<CalculatePath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dest))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dest))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculatePath-request>) istream)
  "Deserializes a message object of type '<CalculatePath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dest) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dest) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculatePath-request>)))
  "Returns string type for a service object of type '<CalculatePath-request>"
  "supervision_msgs/CalculatePathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculatePath-request)))
  "Returns string type for a service object of type 'CalculatePath-request"
  "supervision_msgs/CalculatePathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculatePath-request>)))
  "Returns md5sum for a message object of type '<CalculatePath-request>"
  "0e0b8412cb0804d38525492d9255edb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculatePath-request)))
  "Returns md5sum for a message object of type 'CalculatePath-request"
  "0e0b8412cb0804d38525492d9255edb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculatePath-request>)))
  "Returns full string definition for message of type '<CalculatePath-request>"
  (cl:format cl:nil "string source~%string dest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculatePath-request)))
  "Returns full string definition for message of type 'CalculatePath-request"
  (cl:format cl:nil "string source~%string dest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculatePath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:length (cl:slot-value msg 'dest))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculatePath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculatePath-request
    (cl:cons ':source (source msg))
    (cl:cons ':dest (dest msg))
))
;//! \htmlinclude CalculatePath-response.msg.html

(cl:defclass <CalculatePath-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:fixnum
    :initform 0)
   (path
    :reader path
    :initarg :path
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass CalculatePath-response (<CalculatePath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalculatePath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalculatePath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-srv:<CalculatePath-response> is deprecated: use supervision_msgs-srv:CalculatePath-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <CalculatePath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:distance-val is deprecated.  Use supervision_msgs-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <CalculatePath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:path-val is deprecated.  Use supervision_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalculatePath-response>) ostream)
  "Serializes a message object of type '<CalculatePath-response>"
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalculatePath-response>) istream)
  "Deserializes a message object of type '<CalculatePath-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalculatePath-response>)))
  "Returns string type for a service object of type '<CalculatePath-response>"
  "supervision_msgs/CalculatePathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculatePath-response)))
  "Returns string type for a service object of type 'CalculatePath-response"
  "supervision_msgs/CalculatePathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalculatePath-response>)))
  "Returns md5sum for a message object of type '<CalculatePath-response>"
  "0e0b8412cb0804d38525492d9255edb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalculatePath-response)))
  "Returns md5sum for a message object of type 'CalculatePath-response"
  "0e0b8412cb0804d38525492d9255edb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalculatePath-response>)))
  "Returns full string definition for message of type '<CalculatePath-response>"
  (cl:format cl:nil "int16 distance~%string[] path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalculatePath-response)))
  "Returns full string definition for message of type 'CalculatePath-response"
  (cl:format cl:nil "int16 distance~%string[] path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalculatePath-response>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalculatePath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalculatePath-response
    (cl:cons ':distance (distance msg))
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalculatePath)))
  'CalculatePath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalculatePath)))
  'CalculatePath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalculatePath)))
  "Returns string type for a service object of type '<CalculatePath>"
  "supervision_msgs/CalculatePath")