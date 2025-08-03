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
        height: 100
        width: 50
        text: msg.author.name + " " + msg.author.email;
    }
}
