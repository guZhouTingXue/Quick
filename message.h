#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <QQmlListProperty>
#include <qqmlintegration.h>

#include <QDebug>

class MessageBoard : public QObject{
    Q_OBJECT
    QML_ELEMENT
public:
    MessageBoard(QObject *parent = nullptr)
        : QObject(parent)
    {
        qDebug() << __func__;
        //not useful
        //emit newMessagePosted("animal");
    }
public:
    Q_INVOKABLE void emitSignal()
    {
        emit newMessagePosted("animal");
    }

signals:
    void newMessagePosted(const QString &subject);

};

class Invokable : public QObject {
    Q_OBJECT
    QML_ELEMENT
public:
    Invokable(QObject *parent = nullptr) : QObject(parent) {
        qDebug() << __FUNCTION__ << objectName();
    }
    Q_INVOKABLE void invoke()
    {
        qDebug() << "invoked on" << objectName();
    }
};



#endif // MESSAGE_H
