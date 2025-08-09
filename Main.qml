import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 600
    height: 400
    title: qsTr("Hello QQuick")

    RowLayout {
        anchors.fill: parent

        Rectangle {
            Layout.preferredWidth: 100
            Layout.preferredHeight: 100
            id: item
            color: "blue"
            Rectangle {
                color: "green"
                width: 50
                height: 50
                anchors.bottom: item.bottom
                anchors.right: item.right
            }

        }
        Rectangle {
            color: "plum"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

    }


}
