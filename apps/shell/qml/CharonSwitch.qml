import QtQuick
import QtQuick.Controls
import org.charon.shell

Switch {
    id: root

    implicitWidth: 58
    implicitHeight: 36

    indicator: Rectangle {
        implicitWidth: 48
        implicitHeight: 26

        x: root.leftPadding
        y: (root.height - height) / 2

        radius: height / 2
        color: root.checked
            ? Config.accentColor
            : Qt.darker(Config.contentBackgroundColor, 1.1)

        border.color: Qt.lighter(Config.contentBackgroundColor, 1.2)
        border.width: 1

        Rectangle {
            id: thumb

            width: 20
            height: 20
            radius: 10

            y: (parent.height - height) / 2
            x: root.checked
                ? parent.width - width - 3
                : 3

            color: Config.buttonTextColor

            Behavior on x {
                NumberAnimation {
                    duration: 200
                    easing.type: Easing.OutCubic
                }
            }
        }
    }
}