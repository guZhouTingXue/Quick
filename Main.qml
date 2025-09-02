import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("HeaderView")

    Rectangle {
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
            //interactive: false

            selectionModel: ItemSelectionModel{
                id: selection
                model: tableView.model
                onSelectionChanged: function(selected, deselected){
                           console.debug("selectionChanged selected:", selected);
                       }
                }
            selectionBehavior: TableView.SelectRows
            //selectionMode: TableView.SingleSelection;
            onCurrentRowChanged: function(){
                console.info("currentRow:", currentRow)
                let currentIndex = model.index(currentRow, currentColumn)
                selection.select(currentIndex,
                                 ItemSelectionModel.ClearAndSelect
                                 | ItemSelectionModel.Rows
                                 );
            }
            ScrollBar.vertical: ScrollBar {}

            columnSpacing: 1
            rowSpacing: 1
            model: TableModel {}

            delegate: Rectangle {
                id: rect
                implicitWidth: 100
                implicitHeight: 50
                required property bool selected
                required property bool current
                color: selected ? "red" : "blue"
                Label {
                    text: display
                }
                onSelectedChanged: console.info("delegate selected:", selected, "row: ", row, " column:", column)
            }
        }
    }
}
