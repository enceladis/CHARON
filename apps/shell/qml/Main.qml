import QtQuick
import QtQuick.Controls
import org.charon.shell

ApplicationWindow {
    id: root

    visible: true
    width: 1000
    height: 700

    Wallpaper {
        id: wallpaper
    }

    title: "CHARON"

    color: "transparent"

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
            settingsLoader.active = true
        }
    }   

    Loader {
        id: settingsLoader

        active: false
        source: "SettingsWindow.qml"

        onLoaded: {
            item.closeSettings.connect(() => {
                settingsLoader.active = false
            })
        }
    }

    Rectangle {
        height: Config.islandHeight
        width: Config.islandWidth
        anchors.top: parent.top
        anchors.topMargin: Config.dockMargin
        anchors.horizontalCenter: parent.horizontalCenter
        color: "transparent"
        Island{}
    }

    Rectangle {
        height: Config.dockHeight
        width: Config.dockWidth
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Config.dockMargin
        anchors.horizontalCenter: parent.horizontalCenter
        color: "transparent"
        Dock{}
    }

    Button {
        width: 100
        height: 50
        x: 500
        y: 500
        
        contentItem: Text {
            text: "restore Defaults"
            color: Config.textColor
        }

        background: Rectangle {
            color: Config.buttonColor
        }

        onClicked: Config.restoreColors()
    }
}