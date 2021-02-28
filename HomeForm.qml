import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 400
    height: 800
    id: root
    title: "SCOOPS"

    Branch {
        id: week
        y: root.height * 0.2
        anchors.horizontalCenter: parent.horizontalCenter
        text: "WEEKS"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                parent.parent.parent.StackView.view.push("Page1Form.qml")
            }
        }
    }
    Branch {
        id: calendar
        y: root.height * 0.35
        anchors.horizontalCenter: parent.horizontalCenter
        text: "CALENDAR"
        img: "../img/calendar.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                parent.parent.parent.StackView.view.push("Page2Form.qml")
            }
        }
    }

}
