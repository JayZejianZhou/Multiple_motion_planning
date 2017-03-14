; Auto-generated. Do not edit!


(cl:in-package spencer_nav_msgs-srv)


;//! \htmlinclude SetDrivingDirection-request.msg.html

(cl:defclass <SetDrivingDirection-request> (roslisp-msg-protocol:ros-message)
  ((backward
    :reader backward
    :initarg :backward
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDrivingDirection-request (<SetDrivingDirection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDrivingDirection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDrivingDirection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_nav_msgs-srv:<SetDrivingDirection-request> is deprecated: use spencer_nav_msgs-srv:SetDrivingDirection-request instead.")))

(cl:ensure-generic-function 'backward-val :lambda-list '(m))
(cl:defmethod backward-val ((m <SetDrivingDirection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-srv:backward-val is deprecated.  Use spencer_nav_msgs-srv:backward instead.")
  (backward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDrivingDirection-request>) ostream)
  "Serializes a message object of type '<SetDrivingDirection-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'backward) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDrivingDirection-request>) istream)
  "Deserializes a message object of type '<SetDrivingDirection-request>"
    (cl:setf (cl:slot-value msg 'backward) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDrivingDirection-request>)))
  "Returns string type for a service object of type '<SetDrivingDirection-request>"
  "spencer_nav_msgs/SetDrivingDirectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDrivingDirection-request)))
  "Returns string type for a service object of type 'SetDrivingDirection-request"
  "spencer_nav_msgs/SetDrivingDirectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDrivingDirection-request>)))
  "Returns md5sum for a message object of type '<SetDrivingDirection-request>"
  "d9fd33ff14b7b1818fbbdfcd99a85b57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDrivingDirection-request)))
  "Returns md5sum for a message object of type 'SetDrivingDirection-request"
  "d9fd33ff14b7b1818fbbdfcd99a85b57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDrivingDirection-request>)))
  "Returns full string definition for message of type '<SetDrivingDirection-request>"
  (cl:format cl:nil "bool    backward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDrivingDirection-request)))
  "Returns full string definition for message of type 'SetDrivingDirection-request"
  (cl:format cl:nil "bool    backward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDrivingDirection-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDrivingDirection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDrivingDirection-request
    (cl:cons ':backward (backward msg))
))
;//! \htmlinclude SetDrivingDirection-response.msg.html

(cl:defclass <SetDrivingDirection-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetDrivingDirection-response (<SetDrivingDirection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDrivingDirection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDrivingDirection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_nav_msgs-srv:<SetDrivingDirection-response> is deprecated: use spencer_nav_msgs-srv:SetDrivingDirection-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDrivingDirection-response>) ostream)
  "Serializes a message object of type '<SetDrivingDirection-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDrivingDirection-response>) istream)
  "Deserializes a message object of type '<SetDrivingDirection-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDrivingDirection-response>)))
  "Returns string type for a service object of type '<SetDrivingDirection-response>"
  "spencer_nav_msgs/SetDrivingDirectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDrivingDirection-response)))
  "Returns string type for a service object of type 'SetDrivingDirection-response"
  "spencer_nav_msgs/SetDrivingDirectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDrivingDirection-response>)))
  "Returns md5sum for a message object of type '<SetDrivingDirection-response>"
  "d9fd33ff14b7b1818fbbdfcd99a85b57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDrivingDirection-response)))
  "Returns md5sum for a message object of type 'SetDrivingDirection-response"
  "d9fd33ff14b7b1818fbbdfcd99a85b57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDrivingDirection-response>)))
  "Returns full string definition for message of type '<SetDrivingDirection-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDrivingDirection-response)))
  "Returns full string definition for message of type 'SetDrivingDirection-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDrivingDirection-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDrivingDirection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDrivingDirection-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDrivingDirection)))
  'SetDrivingDirection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDrivingDirection)))
  'SetDrivingDirection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDrivingDirection)))
  "Returns string type for a service object of type '<SetDrivingDirection>"
  "spencer_nav_msgs/SetDrivingDirection")