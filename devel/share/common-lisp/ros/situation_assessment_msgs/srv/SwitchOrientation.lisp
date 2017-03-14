; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-srv)


;//! \htmlinclude SwitchOrientation-request.msg.html

(cl:defclass <SwitchOrientation-request> (roslisp-msg-protocol:ros-message)
  ((backward
    :reader backward
    :initarg :backward
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SwitchOrientation-request (<SwitchOrientation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchOrientation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchOrientation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<SwitchOrientation-request> is deprecated: use situation_assessment_msgs-srv:SwitchOrientation-request instead.")))

(cl:ensure-generic-function 'backward-val :lambda-list '(m))
(cl:defmethod backward-val ((m <SwitchOrientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:backward-val is deprecated.  Use situation_assessment_msgs-srv:backward instead.")
  (backward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchOrientation-request>) ostream)
  "Serializes a message object of type '<SwitchOrientation-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'backward) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchOrientation-request>) istream)
  "Deserializes a message object of type '<SwitchOrientation-request>"
    (cl:setf (cl:slot-value msg 'backward) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchOrientation-request>)))
  "Returns string type for a service object of type '<SwitchOrientation-request>"
  "situation_assessment_msgs/SwitchOrientationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchOrientation-request)))
  "Returns string type for a service object of type 'SwitchOrientation-request"
  "situation_assessment_msgs/SwitchOrientationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchOrientation-request>)))
  "Returns md5sum for a message object of type '<SwitchOrientation-request>"
  "d9fd33ff14b7b1818fbbdfcd99a85b57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchOrientation-request)))
  "Returns md5sum for a message object of type 'SwitchOrientation-request"
  "d9fd33ff14b7b1818fbbdfcd99a85b57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchOrientation-request>)))
  "Returns full string definition for message of type '<SwitchOrientation-request>"
  (cl:format cl:nil "bool backward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchOrientation-request)))
  "Returns full string definition for message of type 'SwitchOrientation-request"
  (cl:format cl:nil "bool backward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchOrientation-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchOrientation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchOrientation-request
    (cl:cons ':backward (backward msg))
))
;//! \htmlinclude SwitchOrientation-response.msg.html

(cl:defclass <SwitchOrientation-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SwitchOrientation-response (<SwitchOrientation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchOrientation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchOrientation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<SwitchOrientation-response> is deprecated: use situation_assessment_msgs-srv:SwitchOrientation-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchOrientation-response>) ostream)
  "Serializes a message object of type '<SwitchOrientation-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchOrientation-response>) istream)
  "Deserializes a message object of type '<SwitchOrientation-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchOrientation-response>)))
  "Returns string type for a service object of type '<SwitchOrientation-response>"
  "situation_assessment_msgs/SwitchOrientationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchOrientation-response)))
  "Returns string type for a service object of type 'SwitchOrientation-response"
  "situation_assessment_msgs/SwitchOrientationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchOrientation-response>)))
  "Returns md5sum for a message object of type '<SwitchOrientation-response>"
  "d9fd33ff14b7b1818fbbdfcd99a85b57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchOrientation-response)))
  "Returns md5sum for a message object of type 'SwitchOrientation-response"
  "d9fd33ff14b7b1818fbbdfcd99a85b57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchOrientation-response>)))
  "Returns full string definition for message of type '<SwitchOrientation-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchOrientation-response)))
  "Returns full string definition for message of type 'SwitchOrientation-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchOrientation-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchOrientation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchOrientation-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchOrientation)))
  'SwitchOrientation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchOrientation)))
  'SwitchOrientation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchOrientation)))
  "Returns string type for a service object of type '<SwitchOrientation>"
  "situation_assessment_msgs/SwitchOrientation")