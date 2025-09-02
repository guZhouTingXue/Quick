import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("HeaderView")

    Rectangle {
        id: frame

        anchors.fill: parent

        color: Application.styleHints.appearance === Qt.Light ? palette.mid : palette.midlight

        HorizontalHeaderView {
            id: horizontalHeader
            anchors.top: parent.top
            anchors.left: parent.left
            syncView: tableView
        }

        TableView {
            id: tableView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: horizontalHeader.bottom
            anchors.bottom: parent.bottom
            clip: true

            ScrollBar.vertical: ScrollBar {}

            columnSpacing: 1
            rowSpacing: 1
            model: TableModel {}

            delegate: Rectangle {
                id: rect
                implicitHeight: 50
                implicitWidth: 100
                Label {
                    id: label
                    text: display

                }

            }
            Component.onCompleted: {
                number = 0
                console.info(
                            "explicit:", explicitColumnWidth(0)
                            , " implicit:", implicitColumnWidth(0)
                            , " width:",columnWidth(0)
                            )

            }

            property int number

            columnWidthProvider: function(column) {
                number++
                //, " number:", number)
                console.info("provider column:", column,
                             " loaded:", isColumnLoaded(column),
                             " width:", columnWidth(column),
                             " explicit:", explicitColumnWidth(column)
                             , " implicit:", implicitColumnWidth(column)
                             , " width:",columnWidth(column)
                             )
                if(column === 1)
                    return 0;
                else
                    return -1;
            }
        }
    }
}
