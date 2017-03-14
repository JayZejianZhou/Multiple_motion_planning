/****************************************************************************
** Meta object code from reading C++ file 'additional_topic_subscriber.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/pedsim_ros/visualization/spencer_tracking_rviz_plugin/src/additional_topic_subscriber.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'additional_topic_subscriber.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_rviz___AdditionalTopicSubscriber[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      34,   33,   33,   33, 0x09,
      48,   33,   33,   33, 0x09,
      71,   33,   33,   33, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_rviz___AdditionalTopicSubscriber[] = {
    "rviz::_AdditionalTopicSubscriber\0\0"
    "updateTopic()\0displayEnableChanged()\0"
    "fixedFrameChanged()\0"
};

void rviz::_AdditionalTopicSubscriber::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        _AdditionalTopicSubscriber *_t = static_cast<_AdditionalTopicSubscriber *>(_o);
        switch (_id) {
        case 0: _t->updateTopic(); break;
        case 1: _t->displayEnableChanged(); break;
        case 2: _t->fixedFrameChanged(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData rviz::_AdditionalTopicSubscriber::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject rviz::_AdditionalTopicSubscriber::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_rviz___AdditionalTopicSubscriber,
      qt_meta_data_rviz___AdditionalTopicSubscriber, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &rviz::_AdditionalTopicSubscriber::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *rviz::_AdditionalTopicSubscriber::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *rviz::_AdditionalTopicSubscriber::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_rviz___AdditionalTopicSubscriber))
        return static_cast<void*>(const_cast< _AdditionalTopicSubscriber*>(this));
    return QObject::qt_metacast(_clname);
}

int rviz::_AdditionalTopicSubscriber::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
