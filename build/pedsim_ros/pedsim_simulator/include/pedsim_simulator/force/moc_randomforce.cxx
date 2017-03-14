/****************************************************************************
** Meta object code from reading C++ file 'randomforce.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/pedsim_ros/pedsim_simulator/include/pedsim_simulator/force/randomforce.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'randomforce.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_RandomForce[] = {

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
      21,   13,   12,   12, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_RandomForce[] = {
    "RandomForce\0\0valueIn\0onForceFactorChanged(double)\0"
};

void RandomForce::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        RandomForce *_t = static_cast<RandomForce *>(_o);
        switch (_id) {
        case 0: _t->onForceFactorChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData RandomForce::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject RandomForce::staticMetaObject = {
    { &Force::staticMetaObject, qt_meta_stringdata_RandomForce,
      qt_meta_data_RandomForce, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &RandomForce::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *RandomForce::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *RandomForce::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_RandomForce))
        return static_cast<void*>(const_cast< RandomForce*>(this));
    return Force::qt_metacast(_clname);
}

int RandomForce::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
