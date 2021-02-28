import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 400
    height: 800 * 0.9

    title: "CALENDAR"


    Text {
        id: name
        text: "inside"
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: print("Clicked")
        }

    }
}
