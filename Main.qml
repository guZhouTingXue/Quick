import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("HeaderView")
    Column {
    spacing: 5
    anchors.fill: parent

    Rectangle {
        id: frame
        width: parent.width
        height: parent.height - btn.height
        //anchors.fill: parent
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
                implicitWidth: row <= 2 ? 100 : 200
                //implicitWidth: 100
                implicitHeight: 50
                Label {
                    id: label
                    text: display

                }

            }
            Component.onCompleted: {
                console.info(
                            "explicit:", explicitColumnWidth(0)
                            , " implicit:", implicitColumnWidth(0)
                            , " width:",columnWidth(0)
                            )

            }
        }
    }
    Button {
        id: btn
        width: 100; height: 50;
        text: "addRow"
        onClicked: {
            tableView.model.appendRow();
        }
    }
    }
}
