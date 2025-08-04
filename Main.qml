import QtQuick
import QtQuick.Controls

//allow the given 'this' object to be used
pragma NativeMethodBehavior: AcceptThisObject

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Exposing Attributes of C++ Types to QML")
    required property MessageBoard board

    Invokable {
        objectName: "parent"
        property Invokable child: Invokable {}
        Component.onCompleted: {
            child.objectName = "child"
            // not pragma NativeMethod... output: child;
            // pragma NativeMethod... output parent
            child.invoke.call(this)
        }
    }
    //id 和 objectName 不是一个东西; objectName 默认为空""
    Text {
        id: txt
        Component.onCompleted: {
            console.debug("id:txt, objectName: ", txt.objectName)
        }
    }

}
