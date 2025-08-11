import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root
    width: 300
    height: 100
    visible: true
    title: "Spanning and stretching Items"

    GridLayout {
       rows: 2
       columns: 3
       anchors.fill: parent
       Rectangle {
           color: 'cyan'
           implicitWidth: 50
           implicitHeight: 50
           Layout.fillWidth: true
           Layout.horizontalStretchFactor: 1
           onWidthChanged: console.debug('cyan width:' + width)
       }
       Rectangle {
           color: 'magenta'
           implicitWidth: 50
           implicitHeight: 50
           Layout.fillWidth: true
           Layout.horizontalStretchFactor: 2
           onWidthChanged: console.debug('magenta width:' + width)
       }
    }
    onWidthChanged: console.debug('window width:' + width)

}

