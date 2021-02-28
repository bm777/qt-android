import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    visible: true
    width: 400
    height: 800
    title: qsTr("SCOOPS")

    header: ToolBar {
        contentHeight: parent.height * 0.1//toolButton.implicitHeight
        background: Rectangle {
            anchors.fill: parent
            color: "#26bdca"
        }

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            contentItem: Text {
                text: toolButton.text
                color: "white"
            }
            font.pointSize: 17
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
            background: Rectangle {
                anchors.fill: parent
                color: "#26bdca"
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
            font.pointSize: 15
            color: "white"
            font.family: "Courier New"
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.4
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("WEEKS")
                width: parent.width
                onClicked: {
                    stackView.push("Page1Form.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("CALENDAR")
                width: parent.width
                onClicked: {
                    stackView.push("Page2Form.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "HomeForm.qml"
        anchors.fill: parent
    }
}
