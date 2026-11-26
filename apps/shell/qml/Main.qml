import QtQuick
import QtQuick.Controls
import org.charon.shell

ApplicationWindow {
    id: root

    visible: true
    width: 1000
    height: 650
    title: "CHARON"

    property int pendingAccentR: 244
    property int pendingAccentB: 158
    property int pendingAccentG: 140
    property int pendingBGR: 37
    property int pendingBGB: 19
    property int pendingBGG: 41
    property color pendingAccentColor: Qt.rgba(pendingAccentR / 255, pendingAccentG / 255, pendingAccentB / 255, 1)
    property color pendingBGColor: Qt.rgba(pendingBGR / 255, pendingBGG / 255, pendingBGB / 255, 1)



    color: Config.backgroundColor

    Text {
        anchors.centerIn: parent

        text: "CHARON"
        color: Config.accentColor
        font.pixelSize: 48
        font.weight: Font.Medium
    }

    //test color settings
    Row {
        topPadding: 30
        leftPadding: 30

        spacing: 30

        //accent color
        Column {
            id: accentSettings
            width: 300
            spacing: 10

            Text {
                text: "Accent Red: " + pendingAccentR
                color: Config.accentColor
            }

            Slider {
                width: 300

                from: 0
                to: 255
                value: pendingAccentR

                onValueChanged: pendingAccentR = Math.round(value)
            }

            Text {
                text: "Accent Blue: " + pendingAccentB
                color: Config.accentColor
            }

            Slider {
                width: 300

                from: 0
                to: 255
                value: pendingAccentB

                onValueChanged: pendingAccentB = Math.round(value)
            }

            Text {
                text: "Accent Green: " + pendingAccentG
                color: Config.accentColor
            }

            Slider {
                width: 300

                from: 0
                to: 255
                value: pendingAccentG

                onValueChanged: pendingAccentG = Math.round(value)
            }

            Button {
                text: "apply"

                onClicked: Config.accentColor = pendingAccentColor
            }

            Rectangle {
                width: 100
                height: 100
                color: pendingAccentColor
                radius: 12
            }
        }

        //background color
        Column {
            id: backgroundSettings
            width: 300
            spacing: 10

            Text {
                text: "Background Red: " + pendingBGR
                color: Config.accentColor
            }

            Slider {
                width: 300

                from: 0
                to: 255
                value: pendingBGR

                onValueChanged: pendingBGR = Math.round(value)
            }

            Text {
                text: "Background Blue: " + pendingBGB
                color: Config.accentColor
            }

            Slider {
                width: 300

                from: 0
                to: 255
                value: pendingBGB

                onValueChanged: pendingBGB = Math.round(value)
            }

            Text {
                text: "Background Green: " + pendingBGG
                color: Config.accentColor
            }

            Slider {
                width: 300

                from: 0
                to: 255
                value: pendingBGG

                onValueChanged: pendingBGG = Math.round(value)
            }

            Button {
                text: "Apply"

                onClicked: Config.backgroundColor = pendingBGColor
            }

            Rectangle {
                width: 100
                height: 100
                color: pendingBGColor
                radius: 12
            }
        }
    }

}