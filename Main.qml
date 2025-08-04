import QtQuick
import QtQuick.Controls

//allow the given 'this' object to be used
pragma NativeMethodBehavior: AcceptThisObject

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Exposing Attributes of C++ Types to QML")

    MessageBoard {
        onNewMessagePosted: (subject)=> console.log("New message received:", subject);
        Component.onCompleted: {
            this.emitSignal()
        }
    }

}
