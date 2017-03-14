/****************************************************************************
** Meta object code from reading C++ file 'alongwallforce.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/pedsim_ros/pedsim_simulator/include/pedsim_simulator/force/alongwallforce.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'alongwallforce.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_AlongWallForce[] = {

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
      24,   16,   15,   15, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_AlongWallForce[] = {
    "AlongWallForce\0\0valueIn\0"
    "onForceFactorChanged(double)\0"
};

void AlongWallForce::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        AlongWallForce *_t = static_cast<AlongWallForce *>(_o);
        switch (_id) {
        case 0: _t->onForceFactorChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData AlongWallForce::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject AlongWallForce::staticMetaObject = {
    { &Force::staticMetaObject, qt_meta_stringdata_AlongWallForce,
      qt_meta_data_AlongWallForce, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &AlongWallForce::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *AlongWallForce::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *AlongWallForce::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_AlongWallForce))
        return static_cast<void*>(const_cast< AlongWallForce*>(this));
    return Force::qt_metacast(_clname);
}

int AlongWallForce::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Force::qt_metacall(_c, _id, _a);
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
