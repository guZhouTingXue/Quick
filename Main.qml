import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello QQuick")
    TextField {
        anchors.centerIn: parent
        width: 100
        height: 50
        placeholderText: "Enter name"
        focus: true
        enabled: false
    }
}
