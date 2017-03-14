/****************************************************************************
** Meta object code from reading C++ file 'config.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/pedsim_ros/pedsim_simulator/include/pedsim_simulator/config.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'config.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Config[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      17,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: signature, parameters, type, tag, flags
      19,    8,    7,    7, 0x05,
      60,   54,    7,    7, 0x05,
      95,   54,    7,    7, 0x05,
     129,   54,    7,    7, 0x05,
     162,   54,    7,    7, 0x05,
     198,   54,    7,    7, 0x05,
     239,   54,    7,    7, 0x05,
     280,   54,    7,    7, 0x05,
     313,   54,    7,    7, 0x05,

 // slots: signature, parameters, type, tag, flags
     357,  349,    7,    7, 0x0a,
     382,  349,    7,    7, 0x0a,
     407,  349,    7,    7, 0x0a,
     430,  349,    7,    7, 0x0a,
     456,  349,    7,    7, 0x0a,
     487,  349,    7,    7, 0x0a,
     518,  349,    7,    7, 0x0a,
     541,  349,    7,    7, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_Config[] = {
    "Config\0\0name,value\0"
    "forceFactorChanged(QString,double)\0"
    "value\0forceFactorObstacleChanged(double)\0"
    "forceSigmaObstacleChanged(double)\0"
    "forceFactorSocialChanged(double)\0"
    "forceFactorGroupGazeChanged(double)\0"
    "forceFactorGroupCoherenceChanged(double)\0"
    "forceFactorGroupRepulsionChanged(double)\0"
    "forceFactorRandomChanged(double)\0"
    "forceFactorAlongWallChanged(double)\0"
    "valueIn\0setObstacleForce(double)\0"
    "setObstacleSigma(double)\0"
    "setSocialForce(double)\0setGroupGazeForce(double)\0"
    "setGroupCoherenceForce(double)\0"
    "setGroupRepulsionForce(double)\0"
    "setRandomForce(double)\0setAlongWallForce(double)\0"
};

void Config::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        Config *_t = static_cast<Config *>(_o);
        switch (_id) {
        case 0: _t->forceFactorChanged((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2]))); break;
        case 1: _t->forceFactorObstacleChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 2: _t->forceSigmaObstacleChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 3: _t->forceFactorSocialChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 4: _t->forceFactorGroupGazeChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 5: _t->forceFactorGroupCoherenceChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 6: _t->forceFactorGroupRepulsionChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 7: _t->forceFactorRandomChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 8: _t->forceFactorAlongWallChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 9: _t->setObstacleForce((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 10: _t->setObstacleSigma((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 11: _t->setSocialForce((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 12: _t->setGroupGazeForce((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 13: _t->setGroupCoherenceForce((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 14: _t->setGroupRepulsionForce((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 15: _t->setRandomForce((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 16: _t->setAlongWallForce((*reinterpret_cast< double(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Config::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Config::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Config,
      qt_meta_data_Config, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Config::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Config::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Config::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Config))
        return static_cast<void*>(const_cast< Config*>(this));
    return QObject::qt_metacast(_clname);
}

int Config::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 17)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 17;
    }
    return _id;
}

// SIGNAL 0
void Config::forceFactorChanged(QString _t1, double _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Config::forceFactorObstacleChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void Config::forceSigmaObstacleChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void Config::forceFactorSocialChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void Config::forceFactorGroupGazeChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void Config::forceFactorGroupCoherenceChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void Config::forceFactorGroupRepulsionChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void Config::forceFactorRandomChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void Config::forceFactorAlongWallChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}
QT_END_MOC_NAMESPACE
