; Auto-generated. Do not edit!


(cl:in-package spencer_mapping_msgs-msg)


;//! \htmlinclude TopologicalMapEdge.msg.html

(cl:defclass <TopologicalMapEdge> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (src
    :reader src
    :initarg :src
    :type cl:integer
    :initform 0)
   (dest
    :reader dest
    :initarg :dest
    :type cl:integer
    :initform 0)
   (cost
    :reader cost
    :initarg :cost
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TopologicalMapEdge (<TopologicalMapEdge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopologicalMapEdge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopologicalMapEdge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-msg:<TopologicalMapEdge> is deprecated: use spencer_mapping_msgs-msg:TopologicalMapEdge instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TopologicalMapEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:id-val is deprecated.  Use spencer_mapping_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'src-val :lambda-list '(m))
(cl:defmethod src-val ((m <TopologicalMapEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:src-val is deprecated.  Use spencer_mapping_msgs-msg:src instead.")
  (src m))

(cl:ensure-generic-function 'dest-val :lambda-list '(m))
(cl:defmethod dest-val ((m <TopologicalMapEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:dest-val is deprecated.  Use spencer_mapping_msgs-msg:dest instead.")
  (dest m))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <TopologicalMapEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:cost-val is deprecated.  Use spencer_mapping_msgs-msg:cost instead.")
  (cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopologicalMapEdge>) ostream)
  "Serializes a message object of type '<TopologicalMapEdge>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'src)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'src)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'src)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'src)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dest)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cost))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopologicalMapEdge>) istream)
  "Deserializes a message object of type '<TopologicalMapEdge>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'src)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'src)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'src)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'src)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dest)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cost) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cost)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopologicalMapEdge>)))
  "Returns string type for a message object of type '<TopologicalMapEdge>"
  "spencer_mapping_msgs/TopologicalMapEdge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopologicalMapEdge)))
  "Returns string type for a message object of type 'TopologicalMapEdge"
  "spencer_mapping_msgs/TopologicalMapEdge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopologicalMapEdge>)))
  "Returns md5sum for a message object of type '<TopologicalMapEdge>"
  "86b28ab9fe2c0ee0b1718165f3e65470")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopologicalMapEdge)))
  "Returns md5sum for a message object of type 'TopologicalMapEdge"
  "86b28ab9fe2c0ee0b1718165f3e65470")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopologicalMapEdge>)))
  "Returns full string definition for message of type '<TopologicalMapEdge>"
  (cl:format cl:nil "# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with an edge in the topological map~%~%# Id of this edge in the topological map~%uint32 id~%~%# Id of the source node~%uint32 src~%~%# Id of the destination node~%uint32 dest~%~%# Costs of this edge~%float32[] cost~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopologicalMapEdge)))
  "Returns full string definition for message of type 'TopologicalMapEdge"
  (cl:format cl:nil "# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with an edge in the topological map~%~%# Id of this edge in the topological map~%uint32 id~%~%# Id of the source node~%uint32 src~%~%# Id of the destination node~%uint32 dest~%~%# Costs of this edge~%float32[] cost~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopologicalMapEdge>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cost) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopologicalMapEdge>))
  "Converts a ROS message object to a list"
  (cl:list 'TopologicalMapEdge
    (cl:cons ':id (id msg))
    (cl:cons ':src (src msg))
    (cl:cons ':dest (dest msg))
    (cl:cons ':cost (cost msg))
))
