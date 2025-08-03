#ifndef MESSAGE_H
#define MESSAGE_H

#include <QObject>
#include <qqmlintegration.h>

namespace Foo{
enum Enum {
    E0,
    E1
};

}

using FooEnum = Foo::Enum;

class Message : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    //Q_PROPERTY(Foo::Enum e READ e CONSTANT)
    Q_PROPERTY(FooEnum e READ e CONSTANT)

public:
    Foo::Enum e() const {
        return e_;
    }
signals:

private:
    QString m_author = "mingStudent";
    Foo::Enum e_ = Foo::E1;
};

#endif // MESSAGE_H
