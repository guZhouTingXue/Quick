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
                implicitWidth: label.implicitWidth
                Label {
                    id: label
                    text: display

                }

            }
            Component.onCompleted: {
                console.info(
                            "comleted row:4 ",
                            "explicit:", explicitColumnWidth(4)
                            , " implicit:", implicitColumnWidth(4)
                            , " width:",columnWidth(4)
                            )

            }
            columnWidthProvider: function(column) {
                var headerWidth = horizontalHeader.implicitColumnWidth(column)
                var delegateWidth = implicitColumnWidth(column)
                console.info( " loaded:", isColumnLoaded(column),
                             " column:", column, " headerWidth:", headerWidth, " delegateWidth:", delegateWidth)
                var maxWidth = Math.max(headerWidth, delegateWidth)
                return maxWidth
            }

        }
    }
}
