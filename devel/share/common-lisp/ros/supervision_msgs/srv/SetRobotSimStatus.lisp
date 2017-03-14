; Auto-generated. Do not edit!


(cl:in-package supervision_msgs-srv)


;//! \htmlinclude SetRobotSimStatus-request.msg.html

(cl:defclass <SetRobotSimStatus-request> (roslisp-msg-protocol:ros-message)
  ((software_emergency_stop
    :reader software_emergency_stop
    :initarg :software_emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (hardware_emergency_stop
    :reader hardware_emergency_stop
    :initarg :hardware_emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass SetRobotSimStatus-request (<SetRobotSimStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotSimStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotSimStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-srv:<SetRobotSimStatus-request> is deprecated: use supervision_msgs-srv:SetRobotSimStatus-request instead.")))

(cl:ensure-generic-function 'software_emergency_stop-val :lambda-list '(m))
(cl:defmethod software_emergency_stop-val ((m <SetRobotSimStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:software_emergency_stop-val is deprecated.  Use supervision_msgs-srv:software_emergency_stop instead.")
  (software_emergency_stop m))

(cl:ensure-generic-function 'hardware_emergency_stop-val :lambda-list '(m))
(cl:defmethod hardware_emergency_stop-val ((m <SetRobotSimStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:hardware_emergency_stop-val is deprecated.  Use supervision_msgs-srv:hardware_emergency_stop instead.")
  (hardware_emergency_stop m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetRobotSimStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:data-val is deprecated.  Use supervision_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotSimStatus-request>) ostream)
  "Serializes a message object of type '<SetRobotSimStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'software_emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hardware_emergency_stop) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotSimStatus-request>) istream)
  "Deserializes a message object of type '<SetRobotSimStatus-request>"
    (cl:setf (cl:slot-value msg 'software_emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'hardware_emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotSimStatus-request>)))
  "Returns string type for a service object of type '<SetRobotSimStatus-request>"
  "supervision_msgs/SetRobotSimStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotSimStatus-request)))
  "Returns string type for a service object of type 'SetRobotSimStatus-request"
  "supervision_msgs/SetRobotSimStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotSimStatus-request>)))
  "Returns md5sum for a message object of type '<SetRobotSimStatus-request>"
  "00e425d7d45e66a82f9704f5e3fba9a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotSimStatus-request)))
  "Returns md5sum for a message object of type 'SetRobotSimStatus-request"
  "00e425d7d45e66a82f9704f5e3fba9a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotSimStatus-request>)))
  "Returns full string definition for message of type '<SetRobotSimStatus-request>"
  (cl:format cl:nil "bool software_emergency_stop~%bool hardware_emergency_stop~%int64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotSimStatus-request)))
  "Returns full string definition for message of type 'SetRobotSimStatus-request"
  (cl:format cl:nil "bool software_emergency_stop~%bool hardware_emergency_stop~%int64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotSimStatus-request>))
  (cl:+ 0
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotSimStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotSimStatus-request
    (cl:cons ':software_emergency_stop (software_emergency_stop msg))
    (cl:cons ':hardware_emergency_stop (hardware_emergency_stop msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetRobotSimStatus-response.msg.html

(cl:defclass <SetRobotSimStatus-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetRobotSimStatus-response (<SetRobotSimStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotSimStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotSimStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-srv:<SetRobotSimStatus-response> is deprecated: use supervision_msgs-srv:SetRobotSimStatus-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SetRobotSimStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:ok-val is deprecated.  Use supervision_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotSimStatus-response>) ostream)
  "Serializes a message object of type '<SetRobotSimStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotSimStatus-response>) istream)
  "Deserializes a message object of type '<SetRobotSimStatus-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotSimStatus-response>)))
  "Returns string type for a service object of type '<SetRobotSimStatus-response>"
  "supervision_msgs/SetRobotSimStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotSimStatus-response)))
  "Returns string type for a service object of type 'SetRobotSimStatus-response"
  "supervision_msgs/SetRobotSimStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotSimStatus-response>)))
  "Returns md5sum for a message object of type '<SetRobotSimStatus-response>"
  "00e425d7d45e66a82f9704f5e3fba9a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotSimStatus-response)))
  "Returns md5sum for a message object of type 'SetRobotSimStatus-response"
  "00e425d7d45e66a82f9704f5e3fba9a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotSimStatus-response>)))
  "Returns full string definition for message of type '<SetRobotSimStatus-response>"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotSimStatus-response)))
  "Returns full string definition for message of type 'SetRobotSimStatus-response"
  (cl:format cl:nil "bool ok~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotSimStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotSimStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotSimStatus-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRobotSimStatus)))
  'SetRobotSimStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRobotSimStatus)))
  'SetRobotSimStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotSimStatus)))
  "Returns string type for a service object of type '<SetRobotSimStatus>"
  "supervision_msgs/SetRobotSimStatus")