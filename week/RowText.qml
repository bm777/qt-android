import QtQuick 2.12
import QtQuick.Controls 2.10

Item {id: root
    anchors.horizontalCenter: parent.horizontalCenter
    width: parent.width
    height: 40
    property string f: "Courier New"
    property string str: "Flower"
    property string placeh: "0"
//    Rectangle{
//        anchors.fill: parent
//        color: "red"
//    }

    Text {
        x: parent.width * 0.08
        anchors.verticalCenter: parent.verticalCenter
        text: root.str
        font { family: f; pointSize: 12 }
        color: "#b7b7b7"
    }
    TextField {
        id: filled
        text: root.placeh
        font { family: f; pointSize: 12 }
        anchors.verticalCenter: parent.verticalCenter
        x: parent.width * 0.5
        width: x * 0.9
        horizontalAlignment: "AlignHCenter"
        verticalAlignment: "AlignVCenter"
        background: Rectangle {
            anchors.fill: filled
            color: "transparent"
        }
    }


}
