; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-srv)


;//! \htmlinclude QueryDatabase-request.msg.html

(cl:defclass <QueryDatabase-request> (roslisp-msg-protocol:ros-message)
  ((query
    :reader query
    :initarg :query
    :type situation_assessment_msgs-msg:Fact
    :initform (cl:make-instance 'situation_assessment_msgs-msg:Fact)))
)

(cl:defclass QueryDatabase-request (<QueryDatabase-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryDatabase-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryDatabase-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<QueryDatabase-request> is deprecated: use situation_assessment_msgs-srv:QueryDatabase-request instead.")))

(cl:ensure-generic-function 'query-val :lambda-list '(m))
(cl:defmethod query-val ((m <QueryDatabase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:query-val is deprecated.  Use situation_assessment_msgs-srv:query instead.")
  (query m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryDatabase-request>) ostream)
  "Serializes a message object of type '<QueryDatabase-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'query) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryDatabase-request>) istream)
  "Deserializes a message object of type '<QueryDatabase-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'query) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryDatabase-request>)))
  "Returns string type for a service object of type '<QueryDatabase-request>"
  "situation_assessment_msgs/QueryDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryDatabase-request)))
  "Returns string type for a service object of type 'QueryDatabase-request"
  "situation_assessment_msgs/QueryDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryDatabase-request>)))
  "Returns md5sum for a message object of type '<QueryDatabase-request>"
  "afc245ada899b345b26e27a781857f9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryDatabase-request)))
  "Returns md5sum for a message object of type 'QueryDatabase-request"
  "afc245ada899b345b26e27a781857f9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryDatabase-request>)))
  "Returns full string definition for message of type '<QueryDatabase-request>"
  (cl:format cl:nil "Fact query~%~%================================================================================~%MSG: situation_assessment_msgs/Fact~%string model~%string subject~%string[] predicate~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryDatabase-request)))
  "Returns full string definition for message of type 'QueryDatabase-request"
  (cl:format cl:nil "Fact query~%~%================================================================================~%MSG: situation_assessment_msgs/Fact~%string model~%string subject~%string[] predicate~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryDatabase-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'query))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryDatabase-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryDatabase-request
    (cl:cons ':query (query msg))
))
;//! \htmlinclude QueryDatabase-response.msg.html

(cl:defclass <QueryDatabase-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector situation_assessment_msgs-msg:Fact)
   :initform (cl:make-array 0 :element-type 'situation_assessment_msgs-msg:Fact :initial-element (cl:make-instance 'situation_assessment_msgs-msg:Fact))))
)

(cl:defclass QueryDatabase-response (<QueryDatabase-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryDatabase-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryDatabase-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<QueryDatabase-response> is deprecated: use situation_assessment_msgs-srv:QueryDatabase-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <QueryDatabase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:result-val is deprecated.  Use situation_assessment_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryDatabase-response>) ostream)
  "Serializes a message object of type '<QueryDatabase-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryDatabase-response>) istream)
  "Deserializes a message object of type '<QueryDatabase-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'situation_assessment_msgs-msg:Fact))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryDatabase-response>)))
  "Returns string type for a service object of type '<QueryDatabase-response>"
  "situation_assessment_msgs/QueryDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryDatabase-response)))
  "Returns string type for a service object of type 'QueryDatabase-response"
  "situation_assessment_msgs/QueryDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryDatabase-response>)))
  "Returns md5sum for a message object of type '<QueryDatabase-response>"
  "afc245ada899b345b26e27a781857f9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryDatabase-response)))
  "Returns md5sum for a message object of type 'QueryDatabase-response"
  "afc245ada899b345b26e27a781857f9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryDatabase-response>)))
  "Returns full string definition for message of type '<QueryDatabase-response>"
  (cl:format cl:nil "Fact[] result~%~%================================================================================~%MSG: situation_assessment_msgs/Fact~%string model~%string subject~%string[] predicate~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryDatabase-response)))
  "Returns full string definition for message of type 'QueryDatabase-response"
  (cl:format cl:nil "Fact[] result~%~%================================================================================~%MSG: situation_assessment_msgs/Fact~%string model~%string subject~%string[] predicate~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryDatabase-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryDatabase-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryDatabase-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QueryDatabase)))
  'QueryDatabase-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QueryDatabase)))
  'QueryDatabase-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryDatabase)))
  "Returns string type for a service object of type '<QueryDatabase>"
  "situation_assessment_msgs/QueryDatabase")