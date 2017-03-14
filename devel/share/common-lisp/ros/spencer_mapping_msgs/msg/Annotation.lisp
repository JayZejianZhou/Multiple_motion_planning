; Auto-generated. Do not edit!


(cl:in-package spencer_mapping_msgs-msg)


;//! \htmlinclude Annotation.msg.html

(cl:defclass <Annotation> (roslisp-msg-protocol:ros-message)
  ((annot_id
    :reader annot_id
    :initarg :annot_id
    :type cl:integer
    :initform 0)
   (category
    :reader category
    :initarg :category
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (shape
    :reader shape
    :initarg :shape
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass Annotation (<Annotation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Annotation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Annotation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-msg:<Annotation> is deprecated: use spencer_mapping_msgs-msg:Annotation instead.")))

(cl:ensure-generic-function 'annot_id-val :lambda-list '(m))
(cl:defmethod annot_id-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:annot_id-val is deprecated.  Use spencer_mapping_msgs-msg:annot_id instead.")
  (annot_id m))

(cl:ensure-generic-function 'category-val :lambda-list '(m))
(cl:defmethod category-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:category-val is deprecated.  Use spencer_mapping_msgs-msg:category instead.")
  (category m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:name-val is deprecated.  Use spencer_mapping_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:center-val is deprecated.  Use spencer_mapping_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <Annotation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:shape-val is deprecated.  Use spencer_mapping_msgs-msg:shape instead.")
  (shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Annotation>) ostream)
  "Serializes a message object of type '<Annotation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'annot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'annot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'annot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'annot_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'category))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'category))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shape))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Annotation>) istream)
  "Deserializes a message object of type '<Annotation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'annot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'annot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'annot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'annot_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'category) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'category) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Annotation>)))
  "Returns string type for a message object of type '<Annotation>"
  "spencer_mapping_msgs/Annotation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Annotation)))
  "Returns string type for a message object of type 'Annotation"
  "spencer_mapping_msgs/Annotation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Annotation>)))
  "Returns md5sum for a message object of type '<Annotation>"
  "44675869e94ad18f853fe599bb658d64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Annotation)))
  "Returns md5sum for a message object of type 'Annotation"
  "44675869e94ad18f853fe599bb658d64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Annotation>)))
  "Returns full string definition for message of type '<Annotation>"
  (cl:format cl:nil "# Annotation in the map~%~%uint32 annot_id     # annotation ID~%string category     # class of annotation (e.g. TV, info-screen etc)~%string name         # name of annotation (e.g. TV1)~%~%geometry_msgs/Pose2D center         # Center together with orientation~%geometry_msgs/Point[] shape      # vertices of enclosing polygon~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Annotation)))
  "Returns full string definition for message of type 'Annotation"
  (cl:format cl:nil "# Annotation in the map~%~%uint32 annot_id     # annotation ID~%string category     # class of annotation (e.g. TV, info-screen etc)~%string name         # name of annotation (e.g. TV1)~%~%geometry_msgs/Pose2D center         # Center together with orientation~%geometry_msgs/Point[] shape      # vertices of enclosing polygon~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Annotation>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'category))
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Annotation>))
  "Converts a ROS message object to a list"
  (cl:list 'Annotation
    (cl:cons ':annot_id (annot_id msg))
    (cl:cons ':category (category msg))
    (cl:cons ':name (name msg))
    (cl:cons ':center (center msg))
    (cl:cons ':shape (shape msg))
))
