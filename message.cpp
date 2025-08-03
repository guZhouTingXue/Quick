#include "message.h"

#include <QDebug>

Message::Message(QObject *parent)
    : QObject{parent}
{
    qDebug() << __FUNCTION__ ;
}
