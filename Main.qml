import QtQuick
import QtQuick.Controls

ApplicationWindow {

    visible: true
    width: 640
    height: 480
    title: qsTr("Hello QQuick")

    Rectangle
    {
        id: root
        anchors.fill: parent

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#2ed5fa" }
            GradientStop { position: 1.0; color: "#2467ec" }
        }
        property color black: '#1f1f21'
        property color red: '#fc3d39'
        property color green: '#53d769'

        property bool stop: true
        Rectangle {
            id: light1
            x: 25; y:15;
            width: 100; height: width
            radius: width / 2
            color: root.red
            border.color: Qt.lighter(color, 1.1)
        }

        Rectangle {
            id: light2
            x: 25; y:135;
            width: 100; height: width
            radius: width / 2
            color: root.black
            border.color: Qt.lighter(color, 1.1)
        }
        //state: "stop"
        states: [
            // State {
            //     name: "stop"
            //     PropertyChanges { target: light1; color: root.red }
            //     PropertyChanges { target: light2; color: root.black }

            // },
            State {
                name: "go"
                PropertyChanges { target: light1; color: root.black; }
                PropertyChanges { target: light2; color: root.green; }
                when: !root.stop //auto triggerred
            }
        ]

        MouseArea {
            anchors.fill: parent
            //onClicked: { parent.state = (parent.state == ""? "go" : "") }
            //onClicked: { parent.state = (parent.state == "stop"? "go" : "stop") }

            onClicked: root.stop = !root.stop
        }
    }

}
