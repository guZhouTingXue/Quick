import QtQuick
import QtQuick.Controls


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Exposing Attributes of C++ Types to QML")
    required property MessageBoard board
    MouseArea {
        anchors.fill: parent
        onClicked: {
            board.refresh()
            board.refresh("Hello from QML")
        }
    }

}
