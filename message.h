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
    }

    Q_INVOKABLE QString postMessage(const QString &msg)
    {
        qDebug() << "Called the C++ method with" << msg;
        return "hello QML";
    }

public slots:
    void refresh()
    {
        qDebug() << "Called the C++ slot";
    }
    void refresh(const QString &s)
    {
        qDebug() << "Called the refresh(QString):" << s;
    }
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
