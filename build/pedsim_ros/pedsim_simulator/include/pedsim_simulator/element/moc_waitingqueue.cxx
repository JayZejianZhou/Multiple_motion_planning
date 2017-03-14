/****************************************************************************
** Meta object code from reading C++ file 'waitingqueue.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/pedsim_ros/pedsim_simulator/include/pedsim_simulator/element/waitingqueue.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'waitingqueue.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_WaitingQueue[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       6,       // signalCount

 // signals: signature, parameters, type, tag, flags
      26,   14,   13,   13, 0x05,
      54,   51,   13,   13, 0x05,
      72,   51,   13,   13, 0x05,
      91,   51,   13,   13, 0x05,
     115,   13,   13,   13, 0x05,
     137,  133,   13,   13, 0x05,

 // slots: signature, parameters, type, tag, flags
     183,  176,   13,   13, 0x09,
     213,  205,   13,   13, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_WaitingQueue[] = {
    "WaitingQueue\0\0radianAngle\0"
    "directionChanged(double)\0id\0"
    "agentMayPass(int)\0agentDequeued(int)\0"
    "queueLeaderChanged(int)\0queueEndChanged()\0"
    "x,y\0queueEndPositionChanged(double,double)\0"
    "timeIn\0onTimeChanged(double)\0xIn,yIn\0"
    "onLastAgentPositionChanged(double,double)\0"
};

void WaitingQueue::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        WaitingQueue *_t = static_cast<WaitingQueue *>(_o);
        switch (_id) {
        case 0: _t->directionChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 1: _t->agentMayPass((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->agentDequeued((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->queueLeaderChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->queueEndChanged(); break;
        case 5: _t->queueEndPositionChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 6: _t->onTimeChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 7: _t->onLastAgentPositionChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData WaitingQueue::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject WaitingQueue::staticMetaObject = {
    { &Waypoint::staticMetaObject, qt_meta_stringdata_WaitingQueue,
      qt_meta_data_WaitingQueue, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &WaitingQueue::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *WaitingQueue::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *WaitingQueue::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_WaitingQueue))
        return static_cast<void*>(const_cast< WaitingQueue*>(this));
    return Waypoint::qt_metacast(_clname);
}

int WaitingQueue::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Waypoint::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}

// SIGNAL 0
void WaitingQueue::directionChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void WaitingQueue::agentMayPass(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void WaitingQueue::agentDequeued(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void WaitingQueue::queueLeaderChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void WaitingQueue::queueEndChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 4, 0);
}

// SIGNAL 5
void WaitingQueue::queueEndPositionChanged(double _t1, double _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}
QT_END_MOC_NAMESPACE
