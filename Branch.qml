import QtQuick 2.12
import QtGraphicalEffects 1.12

Rectangle {
    id: root
    width: 220
    height: 80
    radius: 8
    layer.enabled: true
    color: root.content_color

    // properties
    property string text: "ERP/CRM"
    property string content_color: "#26bdca"
    property real size: 18
    property string img: "img/week.png"
    property string f: "Courier New"
    property bool clicked: false

    layer.effect: DropShadow {
        anchors.fill: root
        horizontalOffset: 0 //3
        verticalOffset: 4 //20
        radius: 8.0
        spread: 0
        samples: 15
        color: "#80000000"
        source: root
    }

    Text {
        id: t
        color: "white"
        text: root.text
        x: root.width * 0.35
        anchors.verticalCenter: parent.verticalCenter
        font {family: f; pointSize: root.size}
    }
    Image {
        anchors.verticalCenter: parent.verticalCenter
        source: root.img
        width: 25; height: 25
        x: y
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            root.clicked = true

        }
    }


}
