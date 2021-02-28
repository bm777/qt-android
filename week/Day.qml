import QtQuick 2.0
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.12
import "../"

Page {id: day
    width: 400
    height: 800 * 0.9
    property string f: "Courier New"
    title: "Day"

    Rectangle {
        anchors.fill: parent
        color: "#efefef"
    }

    Rectangle {id: rect
        anchors.centerIn: parent
        width: parent.width * 0.9
        height: parent.height * 0.98
        layer.enabled: true

        layer.effect: DropShadow {
            anchors.fill: rect
            horizontalOffset: 0 //3
            verticalOffset: 4 //20
            radius: 8.0
            spread: 0
            samples: 15
            color: "#80000000"
            source: rect
        }


        Rectangle {y: 20
           anchors.horizontalCenter: parent.horizontalCenter
           width: 60
           height: 60
           radius: 4
           color: "#26bdca"
           Image {
               anchors.centerIn: parent
               source: "../img/week.png"
               width: 25; height: 25
           }
        }

        RowText {
            id: flower
            y: parent.height * 0.2
            str: "Flower"
            placeh: "0"
        }
        RowText {
            id: initial_stock
            y: flower.y + flower.height
            str: "Initial hanged stock"
            placeh: "0"
        }
        RowText {
            id: cummul
            y: initial_stock.y + initial_stock.height
            str: "Cummul"
            placeh: "0"
        }
        RowText {
            id: tornadoed
            y: cummul.y + cummul.height
            str: "Tornadoed"
            placeh: "0"
        }
        RowText {
            id: total_counted
            y: tornadoed.y + tornadoed.height
            str: "Total counted"
            placeh: "0"
        }
        RowText {
            id: total_harvested
            y: total_counted.y + total_counted.height
            str: "Total harvested"
            placeh: "0"
        }
        RowText {
            id: total_hanged
            y: total_harvested.y + total_harvested.height
            str: "Total hanged"
            placeh: "0"
        }
        RowText {
            id: new_stock
            y: total_hanged.y + total_hanged.height
            str: "New stock"
            placeh: "0"
        }

    }
//    Text {
//        text: "Cancel"
//        font {family: f; pointSize: 15}
//        y: new_stock.y + new_stock.height * 3.4
//        x: parent.width * 0.2
//        color: "#d026bdca"
//        MouseArea {
//            anchors.fill: parent
//            onClicked: stack.pop(day)
//        }
//    }

    Rectangle {id: shape
        x: parent.width * 0.5
        y: new_stock.y + new_stock.height * 3
        width: 150; height: 50
        radius: 5
        layer.enabled: true
        color: "#26bdca"
        layer.effect: DropShadow {
            anchors.fill: shape
            horizontalOffset: 0 //3
            verticalOffset: 4 //20
            radius: 8.0
            spread: 0
            samples: 15
            color: "#80000000"
            source: shape
        }
        Text {
            color: "white"
            text: "Save"
            anchors.centerIn: parent
            font {family: f; pointSize: 15}
        }MouseArea {
            anchors.fill: shape
            onClicked: stack.push("../Page1Form.qml")
        }
    }
}
