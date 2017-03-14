; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-srv)


;//! \htmlinclude EmptyRequest-request.msg.html

(cl:defclass <EmptyRequest-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptyRequest-request (<EmptyRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<EmptyRequest-request> is deprecated: use situation_assessment_msgs-srv:EmptyRequest-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyRequest-request>) ostream)
  "Serializes a message object of type '<EmptyRequest-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyRequest-request>) istream)
  "Deserializes a message object of type '<EmptyRequest-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyRequest-request>)))
  "Returns string type for a service object of type '<EmptyRequest-request>"
  "situation_assessment_msgs/EmptyRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRequest-request)))
  "Returns string type for a service object of type 'EmptyRequest-request"
  "situation_assessment_msgs/EmptyRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyRequest-request>)))
  "Returns md5sum for a message object of type '<EmptyRequest-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyRequest-request)))
  "Returns md5sum for a message object of type 'EmptyRequest-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyRequest-request>)))
  "Returns full string definition for message of type '<EmptyRequest-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyRequest-request)))
  "Returns full string definition for message of type 'EmptyRequest-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyRequest-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyRequest-request
))
;//! \htmlinclude EmptyRequest-response.msg.html

(cl:defclass <EmptyRequest-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptyRequest-response (<EmptyRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<EmptyRequest-response> is deprecated: use situation_assessment_msgs-srv:EmptyRequest-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyRequest-response>) ostream)
  "Serializes a message object of type '<EmptyRequest-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyRequest-response>) istream)
  "Deserializes a message object of type '<EmptyRequest-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyRequest-response>)))
  "Returns string type for a service object of type '<EmptyRequest-response>"
  "situation_assessment_msgs/EmptyRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRequest-response)))
  "Returns string type for a service object of type 'EmptyRequest-response"
  "situation_assessment_msgs/EmptyRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyRequest-response>)))
  "Returns md5sum for a message object of type '<EmptyRequest-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyRequest-response)))
  "Returns md5sum for a message object of type 'EmptyRequest-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyRequest-response>)))
  "Returns full string definition for message of type '<EmptyRequest-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyRequest-response)))
  "Returns full string definition for message of type 'EmptyRequest-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyRequest-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyRequest-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmptyRequest)))
  'EmptyRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmptyRequest)))
  'EmptyRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRequest)))
  "Returns string type for a service object of type '<EmptyRequest>"
  "situation_assessment_msgs/EmptyRequest")