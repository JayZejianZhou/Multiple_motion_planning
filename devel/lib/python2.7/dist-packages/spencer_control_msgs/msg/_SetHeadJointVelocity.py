# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from spencer_control_msgs/SetHeadJointVelocity.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetHeadJointVelocity(genpy.Message):
  _md5sum = "c4175a8ec2b1f343eb72dc3f49d4e624"
  _type = "spencer_control_msgs/SetHeadJointVelocity"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """byte    joint  # see list below
float32 velocity # in radians/second

### Constants ###
float32 MIN_VEL = -2.6
float32 MAX_VEL = 2.6
"""
  # Pseudo-constants
  MIN_VEL = -2.6
  MAX_VEL = 2.6

  __slots__ = ['joint','velocity']
  _slot_types = ['byte','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       joint,velocity

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetHeadJointVelocity, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.joint is None:
        self.joint = 0
      if self.velocity is None:
        self.velocity = 0.
    else:
      self.joint = 0
      self.velocity = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_bf.pack(_x.joint, _x.velocity))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.joint, _x.velocity,) = _struct_bf.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_bf.pack(_x.joint, _x.velocity))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 5
      (_x.joint, _x.velocity,) = _struct_bf.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_bf = struct.Struct("<bf")