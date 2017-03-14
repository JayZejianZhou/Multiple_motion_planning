/****************************************************************************
** Meta object code from reading C++ file 'social_relations_display.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/pedsim_ros/visualization/spencer_tracking_rviz_plugin/src/social_relations_display.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'social_relations_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_spencer_tracking_rviz_plugin__SocialRelationsDisplay[] = {

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
      54,   53,   53,   53, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_spencer_tracking_rviz_plugin__SocialRelationsDisplay[] = {
    "spencer_tracking_rviz_plugin::SocialRelationsDisplay\0"
    "\0stylesChanged()\0"
};

void spencer_tracking_rviz_plugin::SocialRelationsDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SocialRelationsDisplay *_t = static_cast<SocialRelationsDisplay *>(_o);
        switch (_id) {
        case 0: _t->stylesChanged(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData spencer_tracking_rviz_plugin::SocialRelationsDisplay::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject spencer_tracking_rviz_plugin::SocialRelationsDisplay::staticMetaObject = {
    { &PersonDisplayCommon<spencer_social_relation_msgs::SocialRelations>::staticMetaObject, qt_meta_stringdata_spencer_tracking_rviz_plugin__SocialRelationsDisplay,
      qt_meta_data_spencer_tracking_rviz_plugin__SocialRelationsDisplay, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &spencer_tracking_rviz_plugin::SocialRelationsDisplay::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *spencer_tracking_rviz_plugin::SocialRelationsDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *spencer_tracking_rviz_plugin::SocialRelationsDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_spencer_tracking_rviz_plugin__SocialRelationsDisplay))
        return static_cast<void*>(const_cast< SocialRelationsDisplay*>(this));
    typedef PersonDisplayCommon<spencer_social_relation_msgs::SocialRelations> QMocSuperClass;
    return QMocSuperClass::qt_metacast(_clname);
}

int spencer_tracking_rviz_plugin::SocialRelationsDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    typedef PersonDisplayCommon<spencer_social_relation_msgs::SocialRelations> QMocSuperClass;
    _id = QMocSuperClass::qt_metacall(_c, _id, _a);
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
