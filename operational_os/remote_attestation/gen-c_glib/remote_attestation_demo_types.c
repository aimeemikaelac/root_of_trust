/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#include <math.h>

#include "remote_attestation_demo_types.h"
#include <thrift/c_glib/thrift.h>

/* constants */

enum _RemoteAttestationDemoBeginAttestationArgsProperties
{
  PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS_0,
  PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS_REMOTE_MESSAGE
};

/* reads a remote_attestation_demo_begin_attestation_args object */
static gint32
remote_attestation_demo_begin_attestation_args_read (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;
  gchar *name = NULL;
  ThriftType ftype;
  gint16 fid;
  guint32 len = 0;
  gpointer data = NULL;
  RemoteAttestationDemoBeginAttestationArgs * this_object = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS(object);

  /* satisfy -Wall in case these aren't used */
  THRIFT_UNUSED_VAR (len);
  THRIFT_UNUSED_VAR (data);
  THRIFT_UNUSED_VAR (this_object);

  /* read the struct begin marker */
  if ((ret = thrift_protocol_read_struct_begin (protocol, &name, error)) < 0)
  {
    if (name) g_free (name);
    return -1;
  }
  xfer += ret;
  if (name) g_free (name);
  name = NULL;

  /* read the struct fields */
  while (1)
  {
    /* read the beginning of a field */
    if ((ret = thrift_protocol_read_field_begin (protocol, &name, &ftype, &fid, error)) < 0)
    {
      if (name) g_free (name);
      return -1;
    }
    xfer += ret;
    if (name) g_free (name);
    name = NULL;

    /* break if we get a STOP field */
    if (ftype == T_STOP)
    {
      break;
    }

    switch (fid)
    {
      case 1:
        if (ftype == T_STRING)
        {
          if (this_object->remote_message != NULL)
          {
            g_free(this_object->remote_message);
            this_object->remote_message = NULL;
          }

          if ((ret = thrift_protocol_read_binary (protocol, &data, &len, error)) < 0)
            return -1;
          xfer += ret;
          this_object->remote_message = g_byte_array_new();
          g_byte_array_append (this_object->remote_message, (guint8 *) data, (guint) len);
          g_free (data);
          this_object->__isset_remote_message = TRUE;
        } else {
          if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
            return -1;
          xfer += ret;
        }
        break;
      default:
        if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
          return -1;
        xfer += ret;
        break;
    }
    if ((ret = thrift_protocol_read_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }

  if ((ret = thrift_protocol_read_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static gint32
remote_attestation_demo_begin_attestation_args_write (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;

  RemoteAttestationDemoBeginAttestationArgs * this_object = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS(object);
  THRIFT_UNUSED_VAR (this_object);
  if ((ret = thrift_protocol_write_struct_begin (protocol, "RemoteAttestationDemoBeginAttestationArgs", error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_field_begin (protocol, "remote_message", T_STRING, 1, error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_binary (protocol, this_object->remote_message ? ((GByteArray *) this_object->remote_message)->data : NULL, this_object->remote_message ? ((GByteArray *) this_object->remote_message)->len : 0, error)) < 0)
    return -1;
  xfer += ret;

  if ((ret = thrift_protocol_write_field_end (protocol, error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_field_stop (protocol, error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static void
remote_attestation_demo_begin_attestation_args_set_property (GObject *object,
                                                             guint property_id,
                                                             const GValue *value,
                                                             GParamSpec *pspec)
{
  RemoteAttestationDemoBeginAttestationArgs *self = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS (object);

  switch (property_id)
  {
    case PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS_REMOTE_MESSAGE:
      if (self->remote_message != NULL)
        g_byte_array_unref (self->remote_message);
      self->remote_message = g_value_dup_boxed (value);
      self->__isset_remote_message = TRUE;
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, property_id, pspec);
      break;
  }
}

static void
remote_attestation_demo_begin_attestation_args_get_property (GObject *object,
                                                             guint property_id,
                                                             GValue *value,
                                                             GParamSpec *pspec)
{
  RemoteAttestationDemoBeginAttestationArgs *self = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS (object);

  switch (property_id)
  {
    case PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS_REMOTE_MESSAGE:
      g_value_set_boxed (value, self->remote_message);
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, property_id, pspec);
      break;
  }
}

static void 
remote_attestation_demo_begin_attestation_args_instance_init (RemoteAttestationDemoBeginAttestationArgs * object)
{
  /* satisfy -Wall */
  THRIFT_UNUSED_VAR (object);
  object->remote_message = NULL;
  object->__isset_remote_message = FALSE;
}

static void 
remote_attestation_demo_begin_attestation_args_finalize (GObject *object)
{
  RemoteAttestationDemoBeginAttestationArgs *tobject = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS (object);

  /* satisfy -Wall in case we don't use tobject */
  THRIFT_UNUSED_VAR (tobject);
  if (tobject->remote_message != NULL)
  {
    thrift_string_free(tobject->remote_message);
    tobject->remote_message = NULL;
  }
}

static void
remote_attestation_demo_begin_attestation_args_class_init (RemoteAttestationDemoBeginAttestationArgsClass * cls)
{
  GObjectClass *gobject_class = G_OBJECT_CLASS (cls);
  ThriftStructClass *struct_class = THRIFT_STRUCT_CLASS (cls);

  struct_class->read = remote_attestation_demo_begin_attestation_args_read;
  struct_class->write = remote_attestation_demo_begin_attestation_args_write;

  gobject_class->finalize = remote_attestation_demo_begin_attestation_args_finalize;
  gobject_class->get_property = remote_attestation_demo_begin_attestation_args_get_property;
  gobject_class->set_property = remote_attestation_demo_begin_attestation_args_set_property;

  g_object_class_install_property
    (gobject_class,
     PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_ARGS_REMOTE_MESSAGE,
     g_param_spec_boxed ("remote_message",
                         NULL,
                         NULL,
                         G_TYPE_BYTE_ARRAY,
                         G_PARAM_READWRITE));
}

GType
remote_attestation_demo_begin_attestation_args_get_type (void)
{
  static GType type = 0;

  if (type == 0) 
  {
    static const GTypeInfo type_info = 
    {
      sizeof (RemoteAttestationDemoBeginAttestationArgsClass),
      NULL, /* base_init */
      NULL, /* base_finalize */
      (GClassInitFunc) remote_attestation_demo_begin_attestation_args_class_init,
      NULL, /* class_finalize */
      NULL, /* class_data */
      sizeof (RemoteAttestationDemoBeginAttestationArgs),
      0, /* n_preallocs */
      (GInstanceInitFunc) remote_attestation_demo_begin_attestation_args_instance_init,
      NULL, /* value_table */
    };

    type = g_type_register_static (THRIFT_TYPE_STRUCT, 
                                   "RemoteAttestationDemoBeginAttestationArgsType",
                                   &type_info, 0);
  }

  return type;
}

enum _RemoteAttestationDemoBeginAttestationResultProperties
{
  PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT_0,
  PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT_SUCCESS
};

/* reads a remote_attestation_demo_begin_attestation_result object */
static gint32
remote_attestation_demo_begin_attestation_result_read (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;
  gchar *name = NULL;
  ThriftType ftype;
  gint16 fid;
  guint32 len = 0;
  gpointer data = NULL;
  RemoteAttestationDemoBeginAttestationResult * this_object = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT(object);

  /* satisfy -Wall in case these aren't used */
  THRIFT_UNUSED_VAR (len);
  THRIFT_UNUSED_VAR (data);
  THRIFT_UNUSED_VAR (this_object);

  /* read the struct begin marker */
  if ((ret = thrift_protocol_read_struct_begin (protocol, &name, error)) < 0)
  {
    if (name) g_free (name);
    return -1;
  }
  xfer += ret;
  if (name) g_free (name);
  name = NULL;

  /* read the struct fields */
  while (1)
  {
    /* read the beginning of a field */
    if ((ret = thrift_protocol_read_field_begin (protocol, &name, &ftype, &fid, error)) < 0)
    {
      if (name) g_free (name);
      return -1;
    }
    xfer += ret;
    if (name) g_free (name);
    name = NULL;

    /* break if we get a STOP field */
    if (ftype == T_STOP)
    {
      break;
    }

    switch (fid)
    {
      case 0:
        if (ftype == T_STRING)
        {
          if (this_object->success != NULL)
          {
            g_free(this_object->success);
            this_object->success = NULL;
          }

          if ((ret = thrift_protocol_read_binary (protocol, &data, &len, error)) < 0)
            return -1;
          xfer += ret;
          this_object->success = g_byte_array_new();
          g_byte_array_append (this_object->success, (guint8 *) data, (guint) len);
          g_free (data);
          this_object->__isset_success = TRUE;
        } else {
          if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
            return -1;
          xfer += ret;
        }
        break;
      default:
        if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
          return -1;
        xfer += ret;
        break;
    }
    if ((ret = thrift_protocol_read_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }

  if ((ret = thrift_protocol_read_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static gint32
remote_attestation_demo_begin_attestation_result_write (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;

  RemoteAttestationDemoBeginAttestationResult * this_object = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT(object);
  THRIFT_UNUSED_VAR (this_object);
  if ((ret = thrift_protocol_write_struct_begin (protocol, "RemoteAttestationDemoBeginAttestationResult", error)) < 0)
    return -1;
  xfer += ret;
  if (this_object->__isset_success == TRUE) {
    if ((ret = thrift_protocol_write_field_begin (protocol, "success", T_STRING, 0, error)) < 0)
      return -1;
    xfer += ret;
    if ((ret = thrift_protocol_write_binary (protocol, this_object->success ? ((GByteArray *) this_object->success)->data : NULL, this_object->success ? ((GByteArray *) this_object->success)->len : 0, error)) < 0)
      return -1;
    xfer += ret;

    if ((ret = thrift_protocol_write_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }
  if ((ret = thrift_protocol_write_field_stop (protocol, error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static void
remote_attestation_demo_begin_attestation_result_set_property (GObject *object,
                                                               guint property_id,
                                                               const GValue *value,
                                                               GParamSpec *pspec)
{
  RemoteAttestationDemoBeginAttestationResult *self = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT (object);

  switch (property_id)
  {
    case PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT_SUCCESS:
      if (self->success != NULL)
        g_byte_array_unref (self->success);
      self->success = g_value_dup_boxed (value);
      self->__isset_success = TRUE;
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, property_id, pspec);
      break;
  }
}

static void
remote_attestation_demo_begin_attestation_result_get_property (GObject *object,
                                                               guint property_id,
                                                               GValue *value,
                                                               GParamSpec *pspec)
{
  RemoteAttestationDemoBeginAttestationResult *self = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT (object);

  switch (property_id)
  {
    case PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT_SUCCESS:
      g_value_set_boxed (value, self->success);
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, property_id, pspec);
      break;
  }
}

static void 
remote_attestation_demo_begin_attestation_result_instance_init (RemoteAttestationDemoBeginAttestationResult * object)
{
  /* satisfy -Wall */
  THRIFT_UNUSED_VAR (object);
  object->success = NULL;
  object->__isset_success = FALSE;
}

static void 
remote_attestation_demo_begin_attestation_result_finalize (GObject *object)
{
  RemoteAttestationDemoBeginAttestationResult *tobject = REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT (object);

  /* satisfy -Wall in case we don't use tobject */
  THRIFT_UNUSED_VAR (tobject);
  if (tobject->success != NULL)
  {
    thrift_string_free(tobject->success);
    tobject->success = NULL;
  }
}

static void
remote_attestation_demo_begin_attestation_result_class_init (RemoteAttestationDemoBeginAttestationResultClass * cls)
{
  GObjectClass *gobject_class = G_OBJECT_CLASS (cls);
  ThriftStructClass *struct_class = THRIFT_STRUCT_CLASS (cls);

  struct_class->read = remote_attestation_demo_begin_attestation_result_read;
  struct_class->write = remote_attestation_demo_begin_attestation_result_write;

  gobject_class->finalize = remote_attestation_demo_begin_attestation_result_finalize;
  gobject_class->get_property = remote_attestation_demo_begin_attestation_result_get_property;
  gobject_class->set_property = remote_attestation_demo_begin_attestation_result_set_property;

  g_object_class_install_property
    (gobject_class,
     PROP_REMOTE_ATTESTATION_DEMO_BEGIN_ATTESTATION_RESULT_SUCCESS,
     g_param_spec_boxed ("success",
                         NULL,
                         NULL,
                         G_TYPE_BYTE_ARRAY,
                         G_PARAM_READWRITE));
}

GType
remote_attestation_demo_begin_attestation_result_get_type (void)
{
  static GType type = 0;

  if (type == 0) 
  {
    static const GTypeInfo type_info = 
    {
      sizeof (RemoteAttestationDemoBeginAttestationResultClass),
      NULL, /* base_init */
      NULL, /* base_finalize */
      (GClassInitFunc) remote_attestation_demo_begin_attestation_result_class_init,
      NULL, /* class_finalize */
      NULL, /* class_data */
      sizeof (RemoteAttestationDemoBeginAttestationResult),
      0, /* n_preallocs */
      (GInstanceInitFunc) remote_attestation_demo_begin_attestation_result_instance_init,
      NULL, /* value_table */
    };

    type = g_type_register_static (THRIFT_TYPE_STRUCT, 
                                   "RemoteAttestationDemoBeginAttestationResultType",
                                   &type_info, 0);
  }

  return type;
}

/* reads a remote_attestation_demo_check_message_args object */
static gint32
remote_attestation_demo_check_message_args_read (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;
  gchar *name = NULL;
  ThriftType ftype;
  gint16 fid;
  guint32 len = 0;
  gpointer data = NULL;
  RemoteAttestationDemoCheckMessageArgs * this_object = REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_ARGS(object);

  /* satisfy -Wall in case these aren't used */
  THRIFT_UNUSED_VAR (len);
  THRIFT_UNUSED_VAR (data);
  THRIFT_UNUSED_VAR (this_object);

  /* read the struct begin marker */
  if ((ret = thrift_protocol_read_struct_begin (protocol, &name, error)) < 0)
  {
    if (name) g_free (name);
    return -1;
  }
  xfer += ret;
  if (name) g_free (name);
  name = NULL;

  /* read the struct fields */
  while (1)
  {
    /* read the beginning of a field */
    if ((ret = thrift_protocol_read_field_begin (protocol, &name, &ftype, &fid, error)) < 0)
    {
      if (name) g_free (name);
      return -1;
    }
    xfer += ret;
    if (name) g_free (name);
    name = NULL;

    /* break if we get a STOP field */
    if (ftype == T_STOP)
    {
      break;
    }

    switch (fid)
    {
      default:
        if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
          return -1;
        xfer += ret;
        break;
    }
    if ((ret = thrift_protocol_read_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }

  if ((ret = thrift_protocol_read_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static gint32
remote_attestation_demo_check_message_args_write (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;

  RemoteAttestationDemoCheckMessageArgs * this_object = REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_ARGS(object);
  THRIFT_UNUSED_VAR (this_object);
  if ((ret = thrift_protocol_write_struct_begin (protocol, "RemoteAttestationDemoCheckMessageArgs", error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_field_stop (protocol, error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static void 
remote_attestation_demo_check_message_args_instance_init (RemoteAttestationDemoCheckMessageArgs * object)
{
  /* satisfy -Wall */
  THRIFT_UNUSED_VAR (object);
}

static void 
remote_attestation_demo_check_message_args_finalize (GObject *object)
{
  RemoteAttestationDemoCheckMessageArgs *tobject = REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_ARGS (object);

  /* satisfy -Wall in case we don't use tobject */
  THRIFT_UNUSED_VAR (tobject);
}

static void
remote_attestation_demo_check_message_args_class_init (RemoteAttestationDemoCheckMessageArgsClass * cls)
{
  GObjectClass *gobject_class = G_OBJECT_CLASS (cls);
  ThriftStructClass *struct_class = THRIFT_STRUCT_CLASS (cls);

  struct_class->read = remote_attestation_demo_check_message_args_read;
  struct_class->write = remote_attestation_demo_check_message_args_write;

  gobject_class->finalize = remote_attestation_demo_check_message_args_finalize;
}

GType
remote_attestation_demo_check_message_args_get_type (void)
{
  static GType type = 0;

  if (type == 0) 
  {
    static const GTypeInfo type_info = 
    {
      sizeof (RemoteAttestationDemoCheckMessageArgsClass),
      NULL, /* base_init */
      NULL, /* base_finalize */
      (GClassInitFunc) remote_attestation_demo_check_message_args_class_init,
      NULL, /* class_finalize */
      NULL, /* class_data */
      sizeof (RemoteAttestationDemoCheckMessageArgs),
      0, /* n_preallocs */
      (GInstanceInitFunc) remote_attestation_demo_check_message_args_instance_init,
      NULL, /* value_table */
    };

    type = g_type_register_static (THRIFT_TYPE_STRUCT, 
                                   "RemoteAttestationDemoCheckMessageArgsType",
                                   &type_info, 0);
  }

  return type;
}

enum _RemoteAttestationDemoCheckMessageResultProperties
{
  PROP_REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT_0,
  PROP_REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT_SUCCESS
};

/* reads a remote_attestation_demo_check_message_result object */
static gint32
remote_attestation_demo_check_message_result_read (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;
  gchar *name = NULL;
  ThriftType ftype;
  gint16 fid;
  guint32 len = 0;
  gpointer data = NULL;
  RemoteAttestationDemoCheckMessageResult * this_object = REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT(object);

  /* satisfy -Wall in case these aren't used */
  THRIFT_UNUSED_VAR (len);
  THRIFT_UNUSED_VAR (data);
  THRIFT_UNUSED_VAR (this_object);

  /* read the struct begin marker */
  if ((ret = thrift_protocol_read_struct_begin (protocol, &name, error)) < 0)
  {
    if (name) g_free (name);
    return -1;
  }
  xfer += ret;
  if (name) g_free (name);
  name = NULL;

  /* read the struct fields */
  while (1)
  {
    /* read the beginning of a field */
    if ((ret = thrift_protocol_read_field_begin (protocol, &name, &ftype, &fid, error)) < 0)
    {
      if (name) g_free (name);
      return -1;
    }
    xfer += ret;
    if (name) g_free (name);
    name = NULL;

    /* break if we get a STOP field */
    if (ftype == T_STOP)
    {
      break;
    }

    switch (fid)
    {
      case 0:
        if (ftype == T_BOOL)
        {
          if ((ret = thrift_protocol_read_bool (protocol, &this_object->success, error)) < 0)
            return -1;
          xfer += ret;
          this_object->__isset_success = TRUE;
        } else {
          if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
            return -1;
          xfer += ret;
        }
        break;
      default:
        if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
          return -1;
        xfer += ret;
        break;
    }
    if ((ret = thrift_protocol_read_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }

  if ((ret = thrift_protocol_read_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static gint32
remote_attestation_demo_check_message_result_write (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;

  RemoteAttestationDemoCheckMessageResult * this_object = REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT(object);
  THRIFT_UNUSED_VAR (this_object);
  if ((ret = thrift_protocol_write_struct_begin (protocol, "RemoteAttestationDemoCheckMessageResult", error)) < 0)
    return -1;
  xfer += ret;
  if (this_object->__isset_success == TRUE) {
    if ((ret = thrift_protocol_write_field_begin (protocol, "success", T_BOOL, 0, error)) < 0)
      return -1;
    xfer += ret;
    if ((ret = thrift_protocol_write_bool (protocol, this_object->success, error)) < 0)
      return -1;
    xfer += ret;

    if ((ret = thrift_protocol_write_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }
  if ((ret = thrift_protocol_write_field_stop (protocol, error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static void
remote_attestation_demo_check_message_result_set_property (GObject *object,
                                                           guint property_id,
                                                           const GValue *value,
                                                           GParamSpec *pspec)
{
  RemoteAttestationDemoCheckMessageResult *self = REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT (object);

  switch (property_id)
  {
    case PROP_REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT_SUCCESS:
      self->success = g_value_get_boolean (value);
      self->__isset_success = TRUE;
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, property_id, pspec);
      break;
  }
}

static void
remote_attestation_demo_check_message_result_get_property (GObject *object,
                                                           guint property_id,
                                                           GValue *value,
                                                           GParamSpec *pspec)
{
  RemoteAttestationDemoCheckMessageResult *self = REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT (object);

  switch (property_id)
  {
    case PROP_REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT_SUCCESS:
      g_value_set_boolean (value, self->success);
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, property_id, pspec);
      break;
  }
}

static void 
remote_attestation_demo_check_message_result_instance_init (RemoteAttestationDemoCheckMessageResult * object)
{
  /* satisfy -Wall */
  THRIFT_UNUSED_VAR (object);
  object->success = 0;
  object->__isset_success = FALSE;
}

static void 
remote_attestation_demo_check_message_result_finalize (GObject *object)
{
  RemoteAttestationDemoCheckMessageResult *tobject = REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT (object);

  /* satisfy -Wall in case we don't use tobject */
  THRIFT_UNUSED_VAR (tobject);
}

static void
remote_attestation_demo_check_message_result_class_init (RemoteAttestationDemoCheckMessageResultClass * cls)
{
  GObjectClass *gobject_class = G_OBJECT_CLASS (cls);
  ThriftStructClass *struct_class = THRIFT_STRUCT_CLASS (cls);

  struct_class->read = remote_attestation_demo_check_message_result_read;
  struct_class->write = remote_attestation_demo_check_message_result_write;

  gobject_class->finalize = remote_attestation_demo_check_message_result_finalize;
  gobject_class->get_property = remote_attestation_demo_check_message_result_get_property;
  gobject_class->set_property = remote_attestation_demo_check_message_result_set_property;

  g_object_class_install_property
    (gobject_class,
     PROP_REMOTE_ATTESTATION_DEMO_CHECK_MESSAGE_RESULT_SUCCESS,
     g_param_spec_boolean ("success",
                           NULL,
                           NULL,
                           FALSE,
                           G_PARAM_READWRITE));
}

GType
remote_attestation_demo_check_message_result_get_type (void)
{
  static GType type = 0;

  if (type == 0) 
  {
    static const GTypeInfo type_info = 
    {
      sizeof (RemoteAttestationDemoCheckMessageResultClass),
      NULL, /* base_init */
      NULL, /* base_finalize */
      (GClassInitFunc) remote_attestation_demo_check_message_result_class_init,
      NULL, /* class_finalize */
      NULL, /* class_data */
      sizeof (RemoteAttestationDemoCheckMessageResult),
      0, /* n_preallocs */
      (GInstanceInitFunc) remote_attestation_demo_check_message_result_instance_init,
      NULL, /* value_table */
    };

    type = g_type_register_static (THRIFT_TYPE_STRUCT, 
                                   "RemoteAttestationDemoCheckMessageResultType",
                                   &type_info, 0);
  }

  return type;
}

/* reads a remote_attestation_demo_get_message_args object */
static gint32
remote_attestation_demo_get_message_args_read (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;
  gchar *name = NULL;
  ThriftType ftype;
  gint16 fid;
  guint32 len = 0;
  gpointer data = NULL;
  RemoteAttestationDemoGetMessageArgs * this_object = REMOTE_ATTESTATION_DEMO_GET_MESSAGE_ARGS(object);

  /* satisfy -Wall in case these aren't used */
  THRIFT_UNUSED_VAR (len);
  THRIFT_UNUSED_VAR (data);
  THRIFT_UNUSED_VAR (this_object);

  /* read the struct begin marker */
  if ((ret = thrift_protocol_read_struct_begin (protocol, &name, error)) < 0)
  {
    if (name) g_free (name);
    return -1;
  }
  xfer += ret;
  if (name) g_free (name);
  name = NULL;

  /* read the struct fields */
  while (1)
  {
    /* read the beginning of a field */
    if ((ret = thrift_protocol_read_field_begin (protocol, &name, &ftype, &fid, error)) < 0)
    {
      if (name) g_free (name);
      return -1;
    }
    xfer += ret;
    if (name) g_free (name);
    name = NULL;

    /* break if we get a STOP field */
    if (ftype == T_STOP)
    {
      break;
    }

    switch (fid)
    {
      default:
        if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
          return -1;
        xfer += ret;
        break;
    }
    if ((ret = thrift_protocol_read_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }

  if ((ret = thrift_protocol_read_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static gint32
remote_attestation_demo_get_message_args_write (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;

  RemoteAttestationDemoGetMessageArgs * this_object = REMOTE_ATTESTATION_DEMO_GET_MESSAGE_ARGS(object);
  THRIFT_UNUSED_VAR (this_object);
  if ((ret = thrift_protocol_write_struct_begin (protocol, "RemoteAttestationDemoGetMessageArgs", error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_field_stop (protocol, error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static void 
remote_attestation_demo_get_message_args_instance_init (RemoteAttestationDemoGetMessageArgs * object)
{
  /* satisfy -Wall */
  THRIFT_UNUSED_VAR (object);
}

static void 
remote_attestation_demo_get_message_args_finalize (GObject *object)
{
  RemoteAttestationDemoGetMessageArgs *tobject = REMOTE_ATTESTATION_DEMO_GET_MESSAGE_ARGS (object);

  /* satisfy -Wall in case we don't use tobject */
  THRIFT_UNUSED_VAR (tobject);
}

static void
remote_attestation_demo_get_message_args_class_init (RemoteAttestationDemoGetMessageArgsClass * cls)
{
  GObjectClass *gobject_class = G_OBJECT_CLASS (cls);
  ThriftStructClass *struct_class = THRIFT_STRUCT_CLASS (cls);

  struct_class->read = remote_attestation_demo_get_message_args_read;
  struct_class->write = remote_attestation_demo_get_message_args_write;

  gobject_class->finalize = remote_attestation_demo_get_message_args_finalize;
}

GType
remote_attestation_demo_get_message_args_get_type (void)
{
  static GType type = 0;

  if (type == 0) 
  {
    static const GTypeInfo type_info = 
    {
      sizeof (RemoteAttestationDemoGetMessageArgsClass),
      NULL, /* base_init */
      NULL, /* base_finalize */
      (GClassInitFunc) remote_attestation_demo_get_message_args_class_init,
      NULL, /* class_finalize */
      NULL, /* class_data */
      sizeof (RemoteAttestationDemoGetMessageArgs),
      0, /* n_preallocs */
      (GInstanceInitFunc) remote_attestation_demo_get_message_args_instance_init,
      NULL, /* value_table */
    };

    type = g_type_register_static (THRIFT_TYPE_STRUCT, 
                                   "RemoteAttestationDemoGetMessageArgsType",
                                   &type_info, 0);
  }

  return type;
}

enum _RemoteAttestationDemoGetMessageResultProperties
{
  PROP_REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT_0,
  PROP_REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT_SUCCESS
};

/* reads a remote_attestation_demo_get_message_result object */
static gint32
remote_attestation_demo_get_message_result_read (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;
  gchar *name = NULL;
  ThriftType ftype;
  gint16 fid;
  guint32 len = 0;
  gpointer data = NULL;
  RemoteAttestationDemoGetMessageResult * this_object = REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT(object);

  /* satisfy -Wall in case these aren't used */
  THRIFT_UNUSED_VAR (len);
  THRIFT_UNUSED_VAR (data);
  THRIFT_UNUSED_VAR (this_object);

  /* read the struct begin marker */
  if ((ret = thrift_protocol_read_struct_begin (protocol, &name, error)) < 0)
  {
    if (name) g_free (name);
    return -1;
  }
  xfer += ret;
  if (name) g_free (name);
  name = NULL;

  /* read the struct fields */
  while (1)
  {
    /* read the beginning of a field */
    if ((ret = thrift_protocol_read_field_begin (protocol, &name, &ftype, &fid, error)) < 0)
    {
      if (name) g_free (name);
      return -1;
    }
    xfer += ret;
    if (name) g_free (name);
    name = NULL;

    /* break if we get a STOP field */
    if (ftype == T_STOP)
    {
      break;
    }

    switch (fid)
    {
      case 0:
        if (ftype == T_STRING)
        {
          if (this_object->success != NULL)
          {
            g_free(this_object->success);
            this_object->success = NULL;
          }

          if ((ret = thrift_protocol_read_binary (protocol, &data, &len, error)) < 0)
            return -1;
          xfer += ret;
          this_object->success = g_byte_array_new();
          g_byte_array_append (this_object->success, (guint8 *) data, (guint) len);
          g_free (data);
          this_object->__isset_success = TRUE;
        } else {
          if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
            return -1;
          xfer += ret;
        }
        break;
      default:
        if ((ret = thrift_protocol_skip (protocol, ftype, error)) < 0)
          return -1;
        xfer += ret;
        break;
    }
    if ((ret = thrift_protocol_read_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }

  if ((ret = thrift_protocol_read_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static gint32
remote_attestation_demo_get_message_result_write (ThriftStruct *object, ThriftProtocol *protocol, GError **error)
{
  gint32 ret;
  gint32 xfer = 0;

  RemoteAttestationDemoGetMessageResult * this_object = REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT(object);
  THRIFT_UNUSED_VAR (this_object);
  if ((ret = thrift_protocol_write_struct_begin (protocol, "RemoteAttestationDemoGetMessageResult", error)) < 0)
    return -1;
  xfer += ret;
  if (this_object->__isset_success == TRUE) {
    if ((ret = thrift_protocol_write_field_begin (protocol, "success", T_STRING, 0, error)) < 0)
      return -1;
    xfer += ret;
    if ((ret = thrift_protocol_write_binary (protocol, this_object->success ? ((GByteArray *) this_object->success)->data : NULL, this_object->success ? ((GByteArray *) this_object->success)->len : 0, error)) < 0)
      return -1;
    xfer += ret;

    if ((ret = thrift_protocol_write_field_end (protocol, error)) < 0)
      return -1;
    xfer += ret;
  }
  if ((ret = thrift_protocol_write_field_stop (protocol, error)) < 0)
    return -1;
  xfer += ret;
  if ((ret = thrift_protocol_write_struct_end (protocol, error)) < 0)
    return -1;
  xfer += ret;

  return xfer;
}

static void
remote_attestation_demo_get_message_result_set_property (GObject *object,
                                                         guint property_id,
                                                         const GValue *value,
                                                         GParamSpec *pspec)
{
  RemoteAttestationDemoGetMessageResult *self = REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT (object);

  switch (property_id)
  {
    case PROP_REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT_SUCCESS:
      if (self->success != NULL)
        g_byte_array_unref (self->success);
      self->success = g_value_dup_boxed (value);
      self->__isset_success = TRUE;
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, property_id, pspec);
      break;
  }
}

static void
remote_attestation_demo_get_message_result_get_property (GObject *object,
                                                         guint property_id,
                                                         GValue *value,
                                                         GParamSpec *pspec)
{
  RemoteAttestationDemoGetMessageResult *self = REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT (object);

  switch (property_id)
  {
    case PROP_REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT_SUCCESS:
      g_value_set_boxed (value, self->success);
      break;

    default:
      G_OBJECT_WARN_INVALID_PROPERTY_ID (object, property_id, pspec);
      break;
  }
}

static void 
remote_attestation_demo_get_message_result_instance_init (RemoteAttestationDemoGetMessageResult * object)
{
  /* satisfy -Wall */
  THRIFT_UNUSED_VAR (object);
  object->success = NULL;
  object->__isset_success = FALSE;
}

static void 
remote_attestation_demo_get_message_result_finalize (GObject *object)
{
  RemoteAttestationDemoGetMessageResult *tobject = REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT (object);

  /* satisfy -Wall in case we don't use tobject */
  THRIFT_UNUSED_VAR (tobject);
  if (tobject->success != NULL)
  {
    thrift_string_free(tobject->success);
    tobject->success = NULL;
  }
}

static void
remote_attestation_demo_get_message_result_class_init (RemoteAttestationDemoGetMessageResultClass * cls)
{
  GObjectClass *gobject_class = G_OBJECT_CLASS (cls);
  ThriftStructClass *struct_class = THRIFT_STRUCT_CLASS (cls);

  struct_class->read = remote_attestation_demo_get_message_result_read;
  struct_class->write = remote_attestation_demo_get_message_result_write;

  gobject_class->finalize = remote_attestation_demo_get_message_result_finalize;
  gobject_class->get_property = remote_attestation_demo_get_message_result_get_property;
  gobject_class->set_property = remote_attestation_demo_get_message_result_set_property;

  g_object_class_install_property
    (gobject_class,
     PROP_REMOTE_ATTESTATION_DEMO_GET_MESSAGE_RESULT_SUCCESS,
     g_param_spec_boxed ("success",
                         NULL,
                         NULL,
                         G_TYPE_BYTE_ARRAY,
                         G_PARAM_READWRITE));
}

GType
remote_attestation_demo_get_message_result_get_type (void)
{
  static GType type = 0;

  if (type == 0) 
  {
    static const GTypeInfo type_info = 
    {
      sizeof (RemoteAttestationDemoGetMessageResultClass),
      NULL, /* base_init */
      NULL, /* base_finalize */
      (GClassInitFunc) remote_attestation_demo_get_message_result_class_init,
      NULL, /* class_finalize */
      NULL, /* class_data */
      sizeof (RemoteAttestationDemoGetMessageResult),
      0, /* n_preallocs */
      (GInstanceInitFunc) remote_attestation_demo_get_message_result_instance_init,
      NULL, /* value_table */
    };

    type = g_type_register_static (THRIFT_TYPE_STRUCT, 
                                   "RemoteAttestationDemoGetMessageResultType",
                                   &type_info, 0);
  }

  return type;
}

