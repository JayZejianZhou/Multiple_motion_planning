; Auto-generated. Do not edit!


(cl:in-package spencer_mapping_msgs-msg)


;//! \htmlinclude TopologicalMapNode.msg.html

(cl:defclass <TopologicalMapNode> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass TopologicalMapNode (<TopologicalMapNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopologicalMapNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopologicalMapNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-msg:<TopologicalMapNode> is deprecated: use spencer_mapping_msgs-msg:TopologicalMapNode instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TopologicalMapNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:id-val is deprecated.  Use spencer_mapping_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TopologicalMapNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:position-val is deprecated.  Use spencer_mapping_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopologicalMapNode>) ostream)
  "Serializes a message object of type '<TopologicalMapNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopologicalMapNode>) istream)
  "Deserializes a message object of type '<TopologicalMapNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopologicalMapNode>)))
  "Returns string type for a message object of type '<TopologicalMapNode>"
  "spencer_mapping_msgs/TopologicalMapNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopologicalMapNode)))
  "Returns string type for a message object of type 'TopologicalMapNode"
  "spencer_mapping_msgs/TopologicalMapNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopologicalMapNode>)))
  "Returns md5sum for a message object of type '<TopologicalMapNode>"
  "efa802d3426eed24813eabb07b944670")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopologicalMapNode)))
  "Returns md5sum for a message object of type 'TopologicalMapNode"
  "efa802d3426eed24813eabb07b944670")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopologicalMapNode>)))
  "Returns full string definition for message of type '<TopologicalMapNode>"
  (cl:format cl:nil "# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with a node in a 2d topological map~%~%# Id of this node in the topological map~%uint32 id~%~%# position in the global map~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopologicalMapNode)))
  "Returns full string definition for message of type 'TopologicalMapNode"
  (cl:format cl:nil "# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with a node in a 2d topological map~%~%# Id of this node in the topological map~%uint32 id~%~%# position in the global map~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopologicalMapNode>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopologicalMapNode>))
  "Converts a ROS message object to a list"
  (cl:list 'TopologicalMapNode
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
))
