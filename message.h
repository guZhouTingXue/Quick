#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <qqmlintegration.h>

class MessageBody : public QObject{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QString text READ text CONSTANT)
public:
    QString text() const {
        return "Body";
    }
};


class Message : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged FINAL)
    Q_PROPERTY(MessageBody* body READ body CONSTANT)
public:
    explicit Message(QObject *parent = nullptr);
    ~Message() {
        delete m_body;
    }

    MessageBody* body()const {
        return m_body;
    }

    void setAuthor(const QString &a) {
        if(a != m_author)
        {
            m_author = a;
            emit authorChanged();
        }
    }

    QString author() const {
        return m_author;
    }

signals:
    void authorChanged();
private:
    QString m_author = "mingStudent";
    MessageBody *m_body = nullptr;
};

#endif // MESSAGE_H
