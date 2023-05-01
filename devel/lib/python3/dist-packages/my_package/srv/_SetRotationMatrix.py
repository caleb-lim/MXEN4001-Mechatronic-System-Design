# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from my_package/SetRotationMatrixRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetRotationMatrixRequest(genpy.Message):
  _md5sum = "c470553b4922c2811589e9927ace9b4e"
  _type = "my_package/SetRotationMatrixRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 r11
float32 r12
float32 r13
float32 r21
float32 r22
float32 r23
float32 r31
float32 r32
float32 r33
"""
  __slots__ = ['r11','r12','r13','r21','r22','r23','r31','r32','r33']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       r11,r12,r13,r21,r22,r23,r31,r32,r33

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetRotationMatrixRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.r11 is None:
        self.r11 = 0.
      if self.r12 is None:
        self.r12 = 0.
      if self.r13 is None:
        self.r13 = 0.
      if self.r21 is None:
        self.r21 = 0.
      if self.r22 is None:
        self.r22 = 0.
      if self.r23 is None:
        self.r23 = 0.
      if self.r31 is None:
        self.r31 = 0.
      if self.r32 is None:
        self.r32 = 0.
      if self.r33 is None:
        self.r33 = 0.
    else:
      self.r11 = 0.
      self.r12 = 0.
      self.r13 = 0.
      self.r21 = 0.
      self.r22 = 0.
      self.r23 = 0.
      self.r31 = 0.
      self.r32 = 0.
      self.r33 = 0.

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
      buff.write(_get_struct_9f().pack(_x.r11, _x.r12, _x.r13, _x.r21, _x.r22, _x.r23, _x.r31, _x.r32, _x.r33))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 36
      (_x.r11, _x.r12, _x.r13, _x.r21, _x.r22, _x.r23, _x.r31, _x.r32, _x.r33,) = _get_struct_9f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_9f().pack(_x.r11, _x.r12, _x.r13, _x.r21, _x.r22, _x.r23, _x.r31, _x.r32, _x.r33))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 36
      (_x.r11, _x.r12, _x.r13, _x.r21, _x.r22, _x.r23, _x.r31, _x.r32, _x.r33,) = _get_struct_9f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9f = None
def _get_struct_9f():
    global _struct_9f
    if _struct_9f is None:
        _struct_9f = struct.Struct("<9f")
    return _struct_9f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from my_package/SetRotationMatrixResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetRotationMatrixResponse(genpy.Message):
  _md5sum = "2d11dcdbe5a6f73dd324353dc52315ab"
  _type = "my_package/SetRotationMatrixResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 angle
"""
  __slots__ = ['angle']
  _slot_types = ['float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       angle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetRotationMatrixResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.angle is None:
        self.angle = 0.
    else:
      self.angle = 0.

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
      _x = self.angle
      buff.write(_get_struct_f().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.angle,) = _get_struct_f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.angle
      buff.write(_get_struct_f().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.angle,) = _get_struct_f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
class SetRotationMatrix(object):
  _type          = 'my_package/SetRotationMatrix'
  _md5sum = 'e26b0831b5184f4a3c0b59f189c892e6'
  _request_class  = SetRotationMatrixRequest
  _response_class = SetRotationMatrixResponse
