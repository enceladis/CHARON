import QtQuick

Rectangle {
    id: root

    property bool selected: false
    property color indicatorColor: Config.accentColor

    width: 4
    height: selected ? parent.height * 0.5 : 0
    y: (parent.height - height) / 2

    radius: 2
    anchors.left: parent.left
    anchors.leftMargin: 4
    color: indicatorColor

    Behavior on height {
        NumberAnimation {
            duration: 150
            easing.type: Easing.OutCubic
        }
    }
}