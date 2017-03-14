/****************************************************************************
** Meta object code from reading C++ file 'agent.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/pedsim_ros/pedsim_simulator/include/pedsim_simulator/element/agent.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'agent.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Agent[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      12,       // signalCount

 // signals: signature, parameters, type, tag, flags
      11,    7,    6,    6, 0x05,
      42,    7,    6,    6, 0x05,
      73,    7,    6,    6, 0x05,
     108,    7,    6,    6, 0x05,
     143,    7,    6,    6, 0x05,
     179,    7,    6,    6, 0x05,
     213,    7,    6,    6, 0x05,
     252,  243,    6,    6, 0x05,
     298,    6,    6,    6, 0x05,
     321,  316,    6,    6, 0x05,
     343,  338,    6,    6, 0x05,
     363,  338,    6,    6, 0x05,

       0        // eod
};

static const char qt_meta_stringdata_Agent[] = {
    "Agent\0\0x,y\0positionChanged(double,double)\0"
    "velocityChanged(double,double)\0"
    "accelerationChanged(double,double)\0"
    "desiredForceChanged(double,double)\0"
    "obstacleForceChanged(double,double)\0"
    "socialForceChanged(double,double)\0"
    "myForceChanged(double,double)\0name,x,y\0"
    "additionalForceChanged(QString,double,double)\0"
    "reachedWaypoint()\0type\0typeChanged(int)\0"
    "name\0forceAdded(QString)\0forceRemoved(QString)\0"
};

void Agent::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        Agent *_t = static_cast<Agent *>(_o);
        switch (_id) {
        case 0: _t->positionChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 1: _t->velocityChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 2: _t->accelerationChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 3: _t->desiredForceChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 4: _t->obstacleForceChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 5: _t->socialForceChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 6: _t->myForceChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 7: _t->additionalForceChanged((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3]))); break;
        case 8: _t->reachedWaypoint(); break;
        case 9: _t->typeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->forceAdded((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 11: _t->forceRemoved((*reinterpret_cast< QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Agent::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Agent::staticMetaObject = {
    { &ScenarioElement::staticMetaObject, qt_meta_stringdata_Agent,
      qt_meta_data_Agent, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Agent::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Agent::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Agent::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Agent))
        return static_cast<void*>(const_cast< Agent*>(this));
    if (!strcmp(_clname, "Ped::Tagent"))
        return static_cast< Ped::Tagent*>(const_cast< Agent*>(this));
    return ScenarioElement::qt_metacast(_clname);
}

int Agent::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = ScenarioElement::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
void Agent::positionChanged(double _t1, double _t2)const
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Agent::velocityChanged(double _t1, double _t2)const
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 1, _a);
}

// SIGNAL 2
void Agent::accelerationChanged(double _t1, double _t2)const
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 2, _a);
}

// SIGNAL 3
void Agent::desiredForceChanged(double _t1, double _t2)const
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 3, _a);
}

// SIGNAL 4
void Agent::obstacleForceChanged(double _t1, double _t2)const
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 4, _a);
}

// SIGNAL 5
void Agent::socialForceChanged(double _t1, double _t2)const
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 5, _a);
}

// SIGNAL 6
void Agent::myForceChanged(double _t1, double _t2)const
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 6, _a);
}

// SIGNAL 7
void Agent::additionalForceChanged(QString _t1, double _t2, double _t3)const
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 7, _a);
}

// SIGNAL 8
void Agent::reachedWaypoint()const
{
    QMetaObject::activate(const_cast< Agent *>(this), &staticMetaObject, 8, 0);
}

// SIGNAL 9
void Agent::typeChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}

// SIGNAL 10
void Agent::forceAdded(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 10, _a);
}

// SIGNAL 11
void Agent::forceRemoved(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 11, _a);
}
QT_END_MOC_NAMESPACE
