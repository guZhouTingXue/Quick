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

};

#endif // MESSAGE_H
