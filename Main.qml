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
        anchors.fill: parent
        text: msg.author
    }

}
