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
    RowLayout {
        anchors.fill: parent
        Rectangle {
            color: "green"
            Layout.preferredHeight: 100
            Layout.preferredWidth: 150
        }
        Rectangle {
            color: "plum"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}



}
