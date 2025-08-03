import QtQuick
import QtQuick.Controls


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Exposing Attributes of C++ Types to QML")

    MessageBoard {
        id: board
        Component.onCompleted: {
            for(let i = 0; i < board.messages.length; i++)
            {
                let msg = board.messages[i]
                console.debug(msg.author)
            }
        }
    }

}
