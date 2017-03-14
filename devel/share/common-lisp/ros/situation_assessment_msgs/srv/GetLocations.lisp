; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-srv)


;//! \htmlinclude GetLocations-request.msg.html

(cl:defclass <GetLocations-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLocations-request (<GetLocations-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocations-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocations-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<GetLocations-request> is deprecated: use situation_assessment_msgs-srv:GetLocations-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocations-request>) ostream)
  "Serializes a message object of type '<GetLocations-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocations-request>) istream)
  "Deserializes a message object of type '<GetLocations-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocations-request>)))
  "Returns string type for a service object of type '<GetLocations-request>"
  "situation_assessment_msgs/GetLocationsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocations-request)))
  "Returns string type for a service object of type 'GetLocations-request"
  "situation_assessment_msgs/GetLocationsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocations-request>)))
  "Returns md5sum for a message object of type '<GetLocations-request>"
  "72e6ff3d010f612aaa8e999e6156cd37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocations-request)))
  "Returns md5sum for a message object of type 'GetLocations-request"
  "72e6ff3d010f612aaa8e999e6156cd37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocations-request>)))
  "Returns full string definition for message of type '<GetLocations-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocations-request)))
  "Returns full string definition for message of type 'GetLocations-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocations-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocations-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocations-request
))
;//! \htmlinclude GetLocations-response.msg.html

(cl:defclass <GetLocations-response> (roslisp-msg-protocol:ros-message)
  ((locations
    :reader locations
    :initarg :locations
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (centers
    :reader centers
    :initarg :centers
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (areas
    :reader areas
    :initarg :areas
    :type (cl:vector geometry_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Polygon :initial-element (cl:make-instance 'geometry_msgs-msg:Polygon))))
)

(cl:defclass GetLocations-response (<GetLocations-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocations-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocations-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<GetLocations-response> is deprecated: use situation_assessment_msgs-srv:GetLocations-response instead.")))

(cl:ensure-generic-function 'locations-val :lambda-list '(m))
(cl:defmethod locations-val ((m <GetLocations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:locations-val is deprecated.  Use situation_assessment_msgs-srv:locations instead.")
  (locations m))

(cl:ensure-generic-function 'centers-val :lambda-list '(m))
(cl:defmethod centers-val ((m <GetLocations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:centers-val is deprecated.  Use situation_assessment_msgs-srv:centers instead.")
  (centers m))

(cl:ensure-generic-function 'areas-val :lambda-list '(m))
(cl:defmethod areas-val ((m <GetLocations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:areas-val is deprecated.  Use situation_assessment_msgs-srv:areas instead.")
  (areas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocations-response>) ostream)
  "Serializes a message object of type '<GetLocations-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'locations))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'centers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'centers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'areas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'areas))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocations-response>) istream)
  "Deserializes a message object of type '<GetLocations-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'centers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'centers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'areas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'areas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocations-response>)))
  "Returns string type for a service object of type '<GetLocations-response>"
  "situation_assessment_msgs/GetLocationsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocations-response)))
  "Returns string type for a service object of type 'GetLocations-response"
  "situation_assessment_msgs/GetLocationsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocations-response>)))
  "Returns md5sum for a message object of type '<GetLocations-response>"
  "72e6ff3d010f612aaa8e999e6156cd37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocations-response)))
  "Returns md5sum for a message object of type 'GetLocations-response"
  "72e6ff3d010f612aaa8e999e6156cd37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocations-response>)))
  "Returns full string definition for message of type '<GetLocations-response>"
  (cl:format cl:nil "string[] locations~%geometry_msgs/Point[] centers~%geometry_msgs/Polygon[] areas~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocations-response)))
  "Returns full string definition for message of type 'GetLocations-response"
  (cl:format cl:nil "string[] locations~%geometry_msgs/Point[] centers~%geometry_msgs/Polygon[] areas~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocations-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'centers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'areas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocations-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocations-response
    (cl:cons ':locations (locations msg))
    (cl:cons ':centers (centers msg))
    (cl:cons ':areas (areas msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLocations)))
  'GetLocations-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLocations)))
  'GetLocations-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocations)))
  "Returns string type for a service object of type '<GetLocations>"
  "situation_assessment_msgs/GetLocations")