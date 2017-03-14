/****************************************************************************
** Meta object code from reading C++ file 'scene.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/pedsim_ros/pedsim_simulator/include/pedsim_simulator/scene.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'scene.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Scene[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      18,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      16,       // signalCount

 // signals: signature, parameters, type, tag, flags
       7,    6,    6,    6, 0x05,
      22,    6,    6,    6, 0x05,
      42,    6,    6,    6, 0x05,
      61,   56,    6,    6, 0x05,
      89,   86,    6,    6, 0x05,
     105,   86,    6,    6, 0x05,
     123,   86,    6,    6, 0x05,
     142,   86,    6,    6, 0x05,
     163,   86,    6,    6, 0x05,
     182,   86,    6,    6, 0x05,
     203,   86,    6,    6, 0x05,
     226,   86,    6,    6, 0x05,
     256,  251,    6,    6, 0x05,
     283,  251,    6,    6, 0x05,
     312,  251,    6,    6, 0x05,
     337,  251,    6,    6, 0x05,

 // slots: signature, parameters, type, tag, flags
     364,    6,    6,    6, 0x0a,
     380,    6,    6,    6, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_Scene[] = {
    "Scene\0\0aboutToStart()\0aboutToMoveAgents()\0"
    "movedAgents()\0time\0sceneTimeChanged(double)\0"
    "id\0agentAdded(int)\0agentRemoved(int)\0"
    "obstacleAdded(int)\0obstacleRemoved(int)\0"
    "waypointAdded(int)\0waypointRemoved(int)\0"
    "agentClusterAdded(int)\0agentClusterRemoved(int)\0"
    "name\0waitingQueueAdded(QString)\0"
    "waitingQueueRemoved(QString)\0"
    "attractionAdded(QString)\0"
    "attractionRemoved(QString)\0moveAllAgents()\0"
    "cleanupScene()\0"
};

void Scene::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        Scene *_t = static_cast<Scene *>(_o);
        switch (_id) {
        case 0: _t->aboutToStart(); break;
        case 1: _t->aboutToMoveAgents(); break;
        case 2: _t->movedAgents(); break;
        case 3: _t->sceneTimeChanged((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 4: _t->agentAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->agentRemoved((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->obstacleAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->obstacleRemoved((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->waypointAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->waypointRemoved((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: _t->agentClusterAdded((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 11: _t->agentClusterRemoved((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->waitingQueueAdded((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 13: _t->waitingQueueRemoved((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 14: _t->attractionAdded((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 15: _t->attractionRemoved((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 16: _t->moveAllAgents(); break;
        case 17: _t->cleanupScene(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Scene::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Scene::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Scene,
      qt_meta_data_Scene, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Scene::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Scene::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Scene::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Scene))
        return static_cast<void*>(const_cast< Scene*>(this));
    if (!strcmp(_clname, "Ped::Tscene"))
        return static_cast< Ped::Tscene*>(const_cast< Scene*>(this));
    return QObject::qt_metacast(_clname);
}

int Scene::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 18)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 18;
    }
    return _id;
}

// SIGNAL 0
void Scene::aboutToStart()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void Scene::aboutToMoveAgents()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void Scene::movedAgents()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void Scene::sceneTimeChanged(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void Scene::agentAdded(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void Scene::agentRemoved(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void Scene::obstacleAdded(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void Scene::obstacleRemoved(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void Scene::waypointAdded(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void Scene::waypointRemoved(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}

// SIGNAL 10
void Scene::agentClusterAdded(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 10, _a);
}

// SIGNAL 11
void Scene::agentClusterRemoved(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 11, _a);
}

// SIGNAL 12
void Scene::waitingQueueAdded(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 12, _a);
}

// SIGNAL 13
void Scene::waitingQueueRemoved(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 13, _a);
}

// SIGNAL 14
void Scene::attractionAdded(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 14, _a);
}

// SIGNAL 15
void Scene::attractionRemoved(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 15, _a);
}
QT_END_MOC_NAMESPACE
