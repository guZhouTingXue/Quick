import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: qsTr("Hello QQuick")

    RowLayout {
        anchors.fill: parent
        Rectangle {
            id: rect
            color: "green"

            width: 200
            height: width
            onWidthChanged: console.debug("(" + width + "," + height + ")")
            onHeightChanged: console.debug("(" + width + "," + height + ")")
        }
        Button {
            text: "subtract Rect width"
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked: {
                rect.width -= 50
            }
            background: Rectangle { color: "plum"; anchors.fill: parent }
        }
    }
}
