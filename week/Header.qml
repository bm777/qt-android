import QtQuick 2.0
import QtGraphicalEffects 1.12

Rectangle {
    id: head
    property string about: "Information about week #"+week_id
    property int week_id: 0
    property string descp: "This week is already field"
    property string f: "Courier New"
    layer.enabled: true
    width: parent.width; height: 110

    layer.effect: DropShadow {
        anchors.fill: head
        horizontalOffset: 0 //3
        verticalOffset: 1 //20
        spread: 0
        samples: 15
        color: "#80000000"
        source: head
    }


    Rectangle {id: rect
        anchors.verticalCenter: parent.verticalCenter
        x: y
        width: 80; height: 80
        radius: 5
        color: "#26bdca"
        Image {
            source: "../img/week.png"
            width: 25; height: 25
            anchors.centerIn: parent
        }
    }


    Text {id: t
        text: head.about
        color: "#26bdca"
        font { family: f; pointSize: 11}
        y: rect.y
        x: rect.x + rect.width * 1.4
    }

    Text {
        text: head.descp
        color: "#999999"
        y: parent.height * 0.34
        x: rect.x + rect.width * 1.4
        font { family: f; pointSize: 10}
    }
    Rectangle {
        x: rect.x + rect.width * 1.4
        y: parent.height * 0.6
        width: t.width
        height: 5
        color: "#d9d9d9"
    }
    // ++++++++++++++++++++++++++++++++

    Rectangle {id: blur
        color: "transparent"
        width: root.width
        height: root.height
    }

    // +++++++++++++++++++++++++++++++++
    MouseArea {
        anchors.fill: parent
        onEntered: blur.color = "#40b6b6b6"
        onExited: blur.color = "transparent"
        onClicked: {

        }
    }
}
