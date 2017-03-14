; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-srv)


;//! \htmlinclude AddArea-request.msg.html

(cl:defclass <AddArea-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (area
    :reader area
    :initarg :area
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (linked_to_entity
    :reader linked_to_entity
    :initarg :linked_to_entity
    :type cl:string
    :initform ""))
)

(cl:defclass AddArea-request (<AddArea-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddArea-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddArea-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<AddArea-request> is deprecated: use situation_assessment_msgs-srv:AddArea-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AddArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:name-val is deprecated.  Use situation_assessment_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <AddArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:area-val is deprecated.  Use situation_assessment_msgs-srv:area instead.")
  (area m))

(cl:ensure-generic-function 'linked_to_entity-val :lambda-list '(m))
(cl:defmethod linked_to_entity-val ((m <AddArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:linked_to_entity-val is deprecated.  Use situation_assessment_msgs-srv:linked_to_entity instead.")
  (linked_to_entity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddArea-request>) ostream)
  "Serializes a message object of type '<AddArea-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'linked_to_entity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'linked_to_entity))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddArea-request>) istream)
  "Deserializes a message object of type '<AddArea-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linked_to_entity) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'linked_to_entity) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddArea-request>)))
  "Returns string type for a service object of type '<AddArea-request>"
  "situation_assessment_msgs/AddAreaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddArea-request)))
  "Returns string type for a service object of type 'AddArea-request"
  "situation_assessment_msgs/AddAreaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddArea-request>)))
  "Returns md5sum for a message object of type '<AddArea-request>"
  "c38aa979dfb244cb438e150882c88332")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddArea-request)))
  "Returns md5sum for a message object of type 'AddArea-request"
  "c38aa979dfb244cb438e150882c88332")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddArea-request>)))
  "Returns full string definition for message of type '<AddArea-request>"
  (cl:format cl:nil "string name~%geometry_msgs/Polygon area~%string linked_to_entity~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddArea-request)))
  "Returns full string definition for message of type 'AddArea-request"
  (cl:format cl:nil "string name~%geometry_msgs/Polygon area~%string linked_to_entity~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddArea-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
     4 (cl:length (cl:slot-value msg 'linked_to_entity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddArea-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddArea-request
    (cl:cons ':name (name msg))
    (cl:cons ':area (area msg))
    (cl:cons ':linked_to_entity (linked_to_entity msg))
))
;//! \htmlinclude AddArea-response.msg.html

(cl:defclass <AddArea-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddArea-response (<AddArea-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddArea-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddArea-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<AddArea-response> is deprecated: use situation_assessment_msgs-srv:AddArea-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AddArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:result-val is deprecated.  Use situation_assessment_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddArea-response>) ostream)
  "Serializes a message object of type '<AddArea-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddArea-response>) istream)
  "Deserializes a message object of type '<AddArea-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddArea-response>)))
  "Returns string type for a service object of type '<AddArea-response>"
  "situation_assessment_msgs/AddAreaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddArea-response)))
  "Returns string type for a service object of type 'AddArea-response"
  "situation_assessment_msgs/AddAreaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddArea-response>)))
  "Returns md5sum for a message object of type '<AddArea-response>"
  "c38aa979dfb244cb438e150882c88332")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddArea-response)))
  "Returns md5sum for a message object of type 'AddArea-response"
  "c38aa979dfb244cb438e150882c88332")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddArea-response>)))
  "Returns full string definition for message of type '<AddArea-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddArea-response)))
  "Returns full string definition for message of type 'AddArea-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddArea-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddArea-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddArea-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddArea)))
  'AddArea-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddArea)))
  'AddArea-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddArea)))
  "Returns string type for a service object of type '<AddArea>"
  "situation_assessment_msgs/AddArea")