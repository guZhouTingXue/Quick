#include "message.h"

#include <QDebug>

Message::Message(QObject *parent)
    : QObject{parent}
    , m_body(new MessageBody)
{
    qDebug() << __FUNCTION__ ;
}
