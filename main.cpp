#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "message.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    MessageBoard board;
    engine.setInitialProperties({ {"board", QVariant::fromValue(&board)} });

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("TableViewTest", "Main");

    return app.exec();
}
