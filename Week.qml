import QtQuick 2.0
import QtQuick.Controls 2.10
import "week"

Loader {
    id: root
    width: parent.width
    height: parent.height

    Rectangle {
        anchors.fill: parent
        color: "#efefef"
    }


   ScrollView {
       y: parent.height * 0.01
       ScrollBar.vertical.policy: ScrollBar.AlwaysOn
       anchors.horizontalCenter: root.horizontalCenter
       contentWidth: col.width
       contentHeight: col.height
       height: root.height * 0.88
       width: root.width
       clip: true


       Column {
           id: col
           spacing: 10

           Repeater {
               model: 10
               Header {
                    width: root.width
                    height: 110
                    week_id: index+1

                    MouseArea {
                        anchors.fill: parent
                        onClicked: stack.push("week/Day.qml")
                   }
               }
           }
       }
   }
}
