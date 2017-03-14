; Auto-generated. Do not edit!


(cl:in-package spencer_mapping_msgs-srv)


;//! \htmlinclude Label-request.msg.html

(cl:defclass <Label-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass Label-request (<Label-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Label-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Label-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-srv:<Label-request> is deprecated: use spencer_mapping_msgs-srv:Label-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-srv:type-val is deprecated.  Use spencer_mapping_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Label-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-srv:id-val is deprecated.  Use spencer_mapping_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Label-request>) ostream)
  "Serializes a message object of type '<Label-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Label-request>) istream)
  "Deserializes a message object of type '<Label-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Label-request>)))
  "Returns string type for a service object of type '<Label-request>"
  "spencer_mapping_msgs/LabelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Label-request)))
  "Returns string type for a service object of type 'Label-request"
  "spencer_mapping_msgs/LabelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Label-request>)))
  "Returns md5sum for a message object of type '<Label-request>"
  "df579142d4213a71b5f2635645ed217c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Label-request)))
  "Returns md5sum for a message object of type 'Label-request"
  "df579142d4213a71b5f2635645ed217c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Label-request>)))
  "Returns full string definition for message of type '<Label-request>"
  (cl:format cl:nil "~%~%~%string type~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Label-request)))
  "Returns full string definition for message of type 'Label-request"
  (cl:format cl:nil "~%~%~%string type~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Label-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Label-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Label-request
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude Label-response.msg.html

(cl:defclass <Label-response> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type spencer_mapping_msgs-msg:Label
    :initform (cl:make-instance 'spencer_mapping_msgs-msg:Label)))
)

(cl:defclass Label-response (<Label-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Label-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Label-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-srv:<Label-response> is deprecated: use spencer_mapping_msgs-srv:Label-response instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <Label-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-srv:label-val is deprecated.  Use spencer_mapping_msgs-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Label-response>) ostream)
  "Serializes a message object of type '<Label-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'label) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Label-response>) istream)
  "Deserializes a message object of type '<Label-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'label) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Label-response>)))
  "Returns string type for a service object of type '<Label-response>"
  "spencer_mapping_msgs/LabelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Label-response)))
  "Returns string type for a service object of type 'Label-response"
  "spencer_mapping_msgs/LabelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Label-response>)))
  "Returns md5sum for a message object of type '<Label-response>"
  "df579142d4213a71b5f2635645ed217c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Label-response)))
  "Returns md5sum for a message object of type 'Label-response"
  "df579142d4213a71b5f2635645ed217c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Label-response>)))
  "Returns full string definition for message of type '<Label-response>"
  (cl:format cl:nil "Label label~%~%~%~%================================================================================~%MSG: spencer_mapping_msgs/Label~%# Type and ID of a place in a topologic or metric map~%~%string type          # \"gate\", \"hall\", \"info screen\", etc~%uint32 id            # which gate or info screen is this~%uint32[] nodes       # which topological node(s) correspond to this place~%float32 orientation  # the angle in which the robot should be facing at this place, or NaN if not applicable~%~%~%##################################~%### Constants for place types. ###~%##################################~%~%string      GATE       = \"gate\"~%string      SCREEN     = \"info screen\"~%string      DESK       = \"info desk\"~%string      ROOM       = \"room\"~%string      OBS_POINT  = \"observation point\"~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Label-response)))
  "Returns full string definition for message of type 'Label-response"
  (cl:format cl:nil "Label label~%~%~%~%================================================================================~%MSG: spencer_mapping_msgs/Label~%# Type and ID of a place in a topologic or metric map~%~%string type          # \"gate\", \"hall\", \"info screen\", etc~%uint32 id            # which gate or info screen is this~%uint32[] nodes       # which topological node(s) correspond to this place~%float32 orientation  # the angle in which the robot should be facing at this place, or NaN if not applicable~%~%~%##################################~%### Constants for place types. ###~%##################################~%~%string      GATE       = \"gate\"~%string      SCREEN     = \"info screen\"~%string      DESK       = \"info desk\"~%string      ROOM       = \"room\"~%string      OBS_POINT  = \"observation point\"~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Label-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Label-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Label-response
    (cl:cons ':label (label msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Label)))
  'Label-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Label)))
  'Label-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Label)))
  "Returns string type for a service object of type '<Label>"
  "spencer_mapping_msgs/Label")