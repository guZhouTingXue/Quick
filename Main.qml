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
    Row {

        Text {
            id: t0
            width: 100
            height: 100
            text: msg.author
        }
        Label {
            width: 100
            text: "    "
        }
        Text {
            id: t1
            width: 100
            height: 100
            text: msg.author
        }

        Button {
            property int i
            text: "btn"
            onClicked: {
                i++
                msg.author = i
            }
            Component.onCompleted: {
                i = 0
            }
        }
    }

}
