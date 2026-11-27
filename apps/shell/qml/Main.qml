import QtQuick
import QtQuick.Controls
import org.charon.shell

ApplicationWindow {
    id: root

    visible: true
    width: 1000
    height: 700

    property bool open: false

    Wallpaper {
        id: wallpaper
    }

    title: "CHARON"

    color: Config.windowBackgroundColor

    Button {
        text: "Open Settings"

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        background: Rectangle {
            color: Config.buttonColor
            width: 100
            height: 20
            radius: 10
            anchors.fill: parent
        }
        contentItem: Text {
            text: parent.text
            color: Config.textColor
            font.pixelSize: 10
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
        onClicked: {
            root.open === false
            ? root.open = true
            : root.open = false
        }
    }   

    SettingsWindow {
        visible: root.open

        onCloseRequest: root.open = false
    }
}