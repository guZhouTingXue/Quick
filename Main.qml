import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true

    title: qsTr("Hello QQuick")
    minimumWidth: layout.Layout.minimumWidth
    minimumHeight: layout.Layout.minimumHeight
    maximumWidth: 1000
    maximumHeight: layout.Layout.maximumHeight

    width: layout.implicitWidth
    height: layout.implicitHeight


    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 6
        Rectangle {
            color: 'orange'
            Layout.fillWidth: true
            Layout.minimumWidth: 50
            Layout.preferredWidth: 100
            Layout.maximumWidth: 300
            Layout.minimumHeight: 150
            Text {
                anchors.centerIn: parent
                text: parent.width + 'x' + parent.height
            }
        }
        Rectangle {
            color: 'plum'
            Layout.fillWidth: true
            Layout.minimumWidth: 100
            Layout.preferredWidth: 200
            Layout.preferredHeight: 100
            Text {
                anchors.centerIn: parent
                text: parent.width + 'x' + parent.height
            }
        }
    }
}
