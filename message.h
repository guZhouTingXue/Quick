#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <QQmlListProperty>
#include <qqmlintegration.h>


class MessageAuthor : public QObject {
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QString name READ name CONSTANT)
    Q_PROPERTY(QString email READ email CONSTANT)
public:
    MessageAuthor(QObject *parent = nullptr) : QObject(parent) {}
    QString name() const {
        return "mingStudent";
    }
    QString email() const {
        return ":)@qq.com";
    }
};


class Message : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(MessageAuthor *author READ author CONSTANT)
public:
    explicit Message(QObject *parent = nullptr)
        : QObject(parent)
        , m_author(new MessageAuthor(this))
    {

    }

    MessageAuthor* author() const {
        return m_author;
    }

private:
    MessageAuthor *m_author = nullptr;
};



#endif // MESSAGE_H
