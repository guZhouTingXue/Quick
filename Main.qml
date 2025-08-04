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
            var result = board.postMessage("Hello from QML")
            console.log("Result of postMessage():", result);
            board.refresh();
        }
    }

}
