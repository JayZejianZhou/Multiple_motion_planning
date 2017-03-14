; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-msg)


;//! \htmlinclude HumanIntention.msg.html

(cl:defclass <HumanIntention> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (intention
    :reader intention
    :initarg :intention
    :type cl:string
    :initform ""))
)

(cl:defclass HumanIntention (<HumanIntention>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanIntention>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanIntention)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-msg:<HumanIntention> is deprecated: use situation_assessment_msgs-msg:HumanIntention instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HumanIntention>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:name-val is deprecated.  Use situation_assessment_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'intention-val :lambda-list '(m))
(cl:defmethod intention-val ((m <HumanIntention>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:intention-val is deprecated.  Use situation_assessment_msgs-msg:intention instead.")
  (intention m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanIntention>) ostream)
  "Serializes a message object of type '<HumanIntention>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'intention))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'intention))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanIntention>) istream)
  "Deserializes a message object of type '<HumanIntention>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intention) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'intention) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanIntention>)))
  "Returns string type for a message object of type '<HumanIntention>"
  "situation_assessment_msgs/HumanIntention")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanIntention)))
  "Returns string type for a message object of type 'HumanIntention"
  "situation_assessment_msgs/HumanIntention")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanIntention>)))
  "Returns md5sum for a message object of type '<HumanIntention>"
  "da0991d58d046ac841c5da8b726a1639")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanIntention)))
  "Returns md5sum for a message object of type 'HumanIntention"
  "da0991d58d046ac841c5da8b726a1639")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanIntention>)))
  "Returns full string definition for message of type '<HumanIntention>"
  (cl:format cl:nil "string name~%string intention~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanIntention)))
  "Returns full string definition for message of type 'HumanIntention"
  (cl:format cl:nil "string name~%string intention~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanIntention>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'intention))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanIntention>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanIntention
    (cl:cons ':name (name msg))
    (cl:cons ':intention (intention msg))
))
