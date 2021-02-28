import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 400
    height: 800

    title: "WEEKS"
    Week {

    }


    StackView {
        id: stack
//        initialItem: parent
        anchors.fill: parent
    }
}
