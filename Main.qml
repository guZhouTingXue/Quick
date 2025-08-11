import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: qsTr("Hello QQuick")

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
            Component.onCompleted: console.debug('orange' + width)
            onWidthChanged: console.debug("orange width:" + width)

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
            Component.onCompleted: console.debug('plum' + width)
            onWidthChanged: console.debug("plum width:" + width)
        }
        onWidthChanged: console.debug("layout width:" + width)

    }
    onWidthChanged: console.debug("window width:" + width)
}
