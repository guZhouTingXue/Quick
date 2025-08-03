#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <qqmlintegration.h>

class Message : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(QString author READ author WRITE setAuthor NOTIFY authorChanged FINAL)
public:
    explicit Message(QObject *parent = nullptr);

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
};

#endif // MESSAGE_H
