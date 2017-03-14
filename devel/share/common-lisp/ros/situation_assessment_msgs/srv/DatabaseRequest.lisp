; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-srv)


;//! \htmlinclude DatabaseRequest-request.msg.html

(cl:defclass <DatabaseRequest-request> (roslisp-msg-protocol:ros-message)
  ((fact_list
    :reader fact_list
    :initarg :fact_list
    :type (cl:vector situation_assessment_msgs-msg:Fact)
   :initform (cl:make-array 0 :element-type 'situation_assessment_msgs-msg:Fact :initial-element (cl:make-instance 'situation_assessment_msgs-msg:Fact))))
)

(cl:defclass DatabaseRequest-request (<DatabaseRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DatabaseRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DatabaseRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<DatabaseRequest-request> is deprecated: use situation_assessment_msgs-srv:DatabaseRequest-request instead.")))

(cl:ensure-generic-function 'fact_list-val :lambda-list '(m))
(cl:defmethod fact_list-val ((m <DatabaseRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:fact_list-val is deprecated.  Use situation_assessment_msgs-srv:fact_list instead.")
  (fact_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DatabaseRequest-request>) ostream)
  "Serializes a message object of type '<DatabaseRequest-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fact_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fact_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DatabaseRequest-request>) istream)
  "Deserializes a message object of type '<DatabaseRequest-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fact_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fact_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'situation_assessment_msgs-msg:Fact))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DatabaseRequest-request>)))
  "Returns string type for a service object of type '<DatabaseRequest-request>"
  "situation_assessment_msgs/DatabaseRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatabaseRequest-request)))
  "Returns string type for a service object of type 'DatabaseRequest-request"
  "situation_assessment_msgs/DatabaseRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DatabaseRequest-request>)))
  "Returns md5sum for a message object of type '<DatabaseRequest-request>"
  "4a77422312858937c3dcbfb016845ab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DatabaseRequest-request)))
  "Returns md5sum for a message object of type 'DatabaseRequest-request"
  "4a77422312858937c3dcbfb016845ab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DatabaseRequest-request>)))
  "Returns full string definition for message of type '<DatabaseRequest-request>"
  (cl:format cl:nil "Fact[] fact_list~%~%================================================================================~%MSG: situation_assessment_msgs/Fact~%string model~%string subject~%string[] predicate~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DatabaseRequest-request)))
  "Returns full string definition for message of type 'DatabaseRequest-request"
  (cl:format cl:nil "Fact[] fact_list~%~%================================================================================~%MSG: situation_assessment_msgs/Fact~%string model~%string subject~%string[] predicate~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DatabaseRequest-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fact_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DatabaseRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DatabaseRequest-request
    (cl:cons ':fact_list (fact_list msg))
))
;//! \htmlinclude DatabaseRequest-response.msg.html

(cl:defclass <DatabaseRequest-response> (roslisp-msg-protocol:ros-message)
  ((report
    :reader report
    :initarg :report
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DatabaseRequest-response (<DatabaseRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DatabaseRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DatabaseRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<DatabaseRequest-response> is deprecated: use situation_assessment_msgs-srv:DatabaseRequest-response instead.")))

(cl:ensure-generic-function 'report-val :lambda-list '(m))
(cl:defmethod report-val ((m <DatabaseRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:report-val is deprecated.  Use situation_assessment_msgs-srv:report instead.")
  (report m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DatabaseRequest-response>) ostream)
  "Serializes a message object of type '<DatabaseRequest-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'report) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DatabaseRequest-response>) istream)
  "Deserializes a message object of type '<DatabaseRequest-response>"
    (cl:setf (cl:slot-value msg 'report) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DatabaseRequest-response>)))
  "Returns string type for a service object of type '<DatabaseRequest-response>"
  "situation_assessment_msgs/DatabaseRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatabaseRequest-response)))
  "Returns string type for a service object of type 'DatabaseRequest-response"
  "situation_assessment_msgs/DatabaseRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DatabaseRequest-response>)))
  "Returns md5sum for a message object of type '<DatabaseRequest-response>"
  "4a77422312858937c3dcbfb016845ab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DatabaseRequest-response)))
  "Returns md5sum for a message object of type 'DatabaseRequest-response"
  "4a77422312858937c3dcbfb016845ab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DatabaseRequest-response>)))
  "Returns full string definition for message of type '<DatabaseRequest-response>"
  (cl:format cl:nil "bool report~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DatabaseRequest-response)))
  "Returns full string definition for message of type 'DatabaseRequest-response"
  (cl:format cl:nil "bool report~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DatabaseRequest-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DatabaseRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DatabaseRequest-response
    (cl:cons ':report (report msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DatabaseRequest)))
  'DatabaseRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DatabaseRequest)))
  'DatabaseRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DatabaseRequest)))
  "Returns string type for a service object of type '<DatabaseRequest>"
  "situation_assessment_msgs/DatabaseRequest")