; Auto-generated. Do not edit!


(cl:in-package spencer_mapping_msgs-srv)


;//! \htmlinclude Labels-request.msg.html

(cl:defclass <Labels-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass Labels-request (<Labels-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Labels-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Labels-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-srv:<Labels-request> is deprecated: use spencer_mapping_msgs-srv:Labels-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Labels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-srv:type-val is deprecated.  Use spencer_mapping_msgs-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Labels-request>) ostream)
  "Serializes a message object of type '<Labels-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Labels-request>) istream)
  "Deserializes a message object of type '<Labels-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Labels-request>)))
  "Returns string type for a service object of type '<Labels-request>"
  "spencer_mapping_msgs/LabelsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Labels-request)))
  "Returns string type for a service object of type 'Labels-request"
  "spencer_mapping_msgs/LabelsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Labels-request>)))
  "Returns md5sum for a message object of type '<Labels-request>"
  "01d53b38933ff99878bc751d29e9c541")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Labels-request)))
  "Returns md5sum for a message object of type 'Labels-request"
  "01d53b38933ff99878bc751d29e9c541")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Labels-request>)))
  "Returns full string definition for message of type '<Labels-request>"
  (cl:format cl:nil "~%~%~%~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Labels-request)))
  "Returns full string definition for message of type 'Labels-request"
  (cl:format cl:nil "~%~%~%~%string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Labels-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Labels-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Labels-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude Labels-response.msg.html

(cl:defclass <Labels-response> (roslisp-msg-protocol:ros-message)
  ((labels
    :reader labels
    :initarg :labels
    :type (cl:vector spencer_mapping_msgs-msg:Label)
   :initform (cl:make-array 0 :element-type 'spencer_mapping_msgs-msg:Label :initial-element (cl:make-instance 'spencer_mapping_msgs-msg:Label))))
)

(cl:defclass Labels-response (<Labels-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Labels-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Labels-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-srv:<Labels-response> is deprecated: use spencer_mapping_msgs-srv:Labels-response instead.")))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <Labels-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-srv:labels-val is deprecated.  Use spencer_mapping_msgs-srv:labels instead.")
  (labels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Labels-response>) ostream)
  "Serializes a message object of type '<Labels-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'labels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Labels-response>) istream)
  "Deserializes a message object of type '<Labels-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'spencer_mapping_msgs-msg:Label))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Labels-response>)))
  "Returns string type for a service object of type '<Labels-response>"
  "spencer_mapping_msgs/LabelsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Labels-response)))
  "Returns string type for a service object of type 'Labels-response"
  "spencer_mapping_msgs/LabelsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Labels-response>)))
  "Returns md5sum for a message object of type '<Labels-response>"
  "01d53b38933ff99878bc751d29e9c541")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Labels-response)))
  "Returns md5sum for a message object of type 'Labels-response"
  "01d53b38933ff99878bc751d29e9c541")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Labels-response>)))
  "Returns full string definition for message of type '<Labels-response>"
  (cl:format cl:nil "Label[] labels~%~%~%~%================================================================================~%MSG: spencer_mapping_msgs/Label~%# Type and ID of a place in a topologic or metric map~%~%string type          # \"gate\", \"hall\", \"info screen\", etc~%uint32 id            # which gate or info screen is this~%uint32[] nodes       # which topological node(s) correspond to this place~%float32 orientation  # the angle in which the robot should be facing at this place, or NaN if not applicable~%~%~%##################################~%### Constants for place types. ###~%##################################~%~%string      GATE       = \"gate\"~%string      SCREEN     = \"info screen\"~%string      DESK       = \"info desk\"~%string      ROOM       = \"room\"~%string      OBS_POINT  = \"observation point\"~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Labels-response)))
  "Returns full string definition for message of type 'Labels-response"
  (cl:format cl:nil "Label[] labels~%~%~%~%================================================================================~%MSG: spencer_mapping_msgs/Label~%# Type and ID of a place in a topologic or metric map~%~%string type          # \"gate\", \"hall\", \"info screen\", etc~%uint32 id            # which gate or info screen is this~%uint32[] nodes       # which topological node(s) correspond to this place~%float32 orientation  # the angle in which the robot should be facing at this place, or NaN if not applicable~%~%~%##################################~%### Constants for place types. ###~%##################################~%~%string      GATE       = \"gate\"~%string      SCREEN     = \"info screen\"~%string      DESK       = \"info desk\"~%string      ROOM       = \"room\"~%string      OBS_POINT  = \"observation point\"~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Labels-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Labels-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Labels-response
    (cl:cons ':labels (labels msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Labels)))
  'Labels-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Labels)))
  'Labels-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Labels)))
  "Returns string type for a service object of type '<Labels>"
  "spencer_mapping_msgs/Labels")