import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

//1. 两个ColumnLayout 的implicitWidth 都是0
//2. 两个ColumnLayout 的preferredWidth 相同
ApplicationWindow {
    id: root
    width: 300
    height: 300
    visible: true

    RowLayout {
        anchors.fill: parent
        ColumnLayout {
            Layout.preferredWidth: 50 //2
            Rectangle {
                color: "tomato";
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            RowLayout {
                //spacing: 0 //1
                Rectangle {
                    color: "navajowhite"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                Rectangle {
                    color: "darkseagreen"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }
            Component.onCompleted: { console.debug( "Column0" + " " + implicitWidth)}
        }
        ColumnLayout {
            Layout.preferredWidth: 50 //2
            Rectangle {
                color: "lightpink"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            Rectangle {
                color: "slategray"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            Rectangle {
                color: "lightskyblue"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
            Component.onCompleted: { console.debug( "Column1" + " " + implicitWidth)}
        }
    }
}

