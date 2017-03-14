/****************************************************************************
** Meta object code from reading C++ file 'agentgroup.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/pedsim_ros/pedsim_simulator/include/pedsim_simulator/element/agentgroup.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'agentgroup.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_AgentGroup[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      12,   11,   11,   11, 0x05,
      32,   29,   11,   11, 0x05,
      49,   29,   11,   11, 0x05,

 // slots: signature, parameters, type, tag, flags
      72,   68,   11,   11, 0x0a,
     118,   11,  105,   11, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_AgentGroup[] = {
    "AgentGroup\0\0membersChanged()\0id\0"
    "memberAdded(int)\0memberRemoved(int)\0"
    "x,y\0onPositionChanged(double,double)\0"
    "Ped::Tvector\0updateCenterOfMass()\0"
};

void AgentGroup::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        AgentGroup *_t = static_cast<AgentGroup *>(_o);
        switch (_id) {
        case 0: _t->membersChanged(); break;
        case 1: _t->memberAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->memberRemoved((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->onPositionChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 4: { Ped::Tvector _r = _t->updateCenterOfMass();
            if (_a[0]) *reinterpret_cast< Ped::Tvector*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObjectExtraData AgentGroup::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject AgentGroup::staticMetaObject = {
    { &ScenarioElement::staticMetaObject, qt_meta_stringdata_AgentGroup,
      qt_meta_data_AgentGroup, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &AgentGroup::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *AgentGroup::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *AgentGroup::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_AgentGroup))
        return static_cast<void*>(const_cast< AgentGroup*>(this));
    return ScenarioElement::qt_metacast(_clname);
}

int AgentGroup::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = ScenarioElement::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void AgentGroup::membersChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void AgentGroup::memberAdded(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void AgentGroup::memberRemoved(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_END_MOC_NAMESPACE
