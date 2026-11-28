import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects

Item {
    id: root

    anchors.fill: parent

    Rectangle {
        height: Config.islandHeight
        width: Config.islandWidth
        radius: Config.cornerRadius
        color: Config.windowColor

        Text {
            text: "Island"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}