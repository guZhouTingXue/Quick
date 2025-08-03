import QtQuick
import QtQuick.Controls


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Exposing Attributes of C++ Types to QML")
    Message {
        id: msg
    }

    Text {
        id: t0
        width: 100
        height: 100
        text: msg.author + msg.body.text
    }

}
