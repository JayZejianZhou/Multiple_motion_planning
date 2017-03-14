/****************************************************************************
** Meta object code from reading C++ file 'marker_display.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/pedsim_ros/visualization/animated_markers/animated_marker_rviz_plugin/src/marker_display.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'marker_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_animated_marker_rviz_plugin__MarkerDisplay[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      44,   43,   43,   43, 0x08,
      62,   43,   43,   43, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_animated_marker_rviz_plugin__MarkerDisplay[] = {
    "animated_marker_rviz_plugin::MarkerDisplay\0"
    "\0updateQueueSize()\0updateTopic()\0"
};

void animated_marker_rviz_plugin::MarkerDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MarkerDisplay *_t = static_cast<MarkerDisplay *>(_o);
        switch (_id) {
        case 0: _t->updateQueueSize(); break;
        case 1: _t->updateTopic(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData animated_marker_rviz_plugin::MarkerDisplay::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject animated_marker_rviz_plugin::MarkerDisplay::staticMetaObject = {
    { &rviz::Display::staticMetaObject, qt_meta_stringdata_animated_marker_rviz_plugin__MarkerDisplay,
      qt_meta_data_animated_marker_rviz_plugin__MarkerDisplay, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &animated_marker_rviz_plugin::MarkerDisplay::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *animated_marker_rviz_plugin::MarkerDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *animated_marker_rviz_plugin::MarkerDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_animated_marker_rviz_plugin__MarkerDisplay))
        return static_cast<void*>(const_cast< MarkerDisplay*>(this));
    typedef rviz::Display QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int animated_marker_rviz_plugin::MarkerDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef rviz::Display QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}
static const uint qt_meta_data_animated_marker_rviz_plugin__MarkerNamespace[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      46,   45,   45,   45, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_animated_marker_rviz_plugin__MarkerNamespace[] = {
    "animated_marker_rviz_plugin::MarkerNamespace\0"
    "\0onEnableChanged()\0"
};

void animated_marker_rviz_plugin::MarkerNamespace::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MarkerNamespace *_t = static_cast<MarkerNamespace *>(_o);
        switch (_id) {
        case 0: _t->onEnableChanged(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData animated_marker_rviz_plugin::MarkerNamespace::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject animated_marker_rviz_plugin::MarkerNamespace::staticMetaObject = {
    { &BoolProperty::staticMetaObject, qt_meta_stringdata_animated_marker_rviz_plugin__MarkerNamespace,
      qt_meta_data_animated_marker_rviz_plugin__MarkerNamespace, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &animated_marker_rviz_plugin::MarkerNamespace::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *animated_marker_rviz_plugin::MarkerNamespace::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *animated_marker_rviz_plugin::MarkerNamespace::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_animated_marker_rviz_plugin__MarkerNamespace))
        return static_cast<void*>(const_cast< MarkerNamespace*>(this));
    return BoolProperty::qt_metacast(_clname);
}

int animated_marker_rviz_plugin::MarkerNamespace::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = BoolProperty::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
