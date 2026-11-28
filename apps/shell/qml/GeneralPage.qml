import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root
    Layout.fillWidth: true
    Layout.fillHeight: true

    Rectangle {
        anchors.fill: parent
        color: "transparent"

        ScrollView {
            id: generalPage
            anchors.fill: parent
            anchors.margins: 6

            ScrollBar.vertical.policy: ScrollBar.AsNeeded

            ColumnLayout {
                width: generalPage.width
                spacing: 6

                Rectangle {
                color: Config.secondaryWindowColor
                Layout.fillWidth: true
                height: 100
                radius: 15

                    Text {
                        text: "Enable Animations"
                        color: Config.accentColor
                        anchors.top: parent.top
                        anchors.topMargin: 15
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        font.pixelSize: 15
                    }

                    Text {
                        text: "Turns animations on or off."
                        color: Config.textColor
                        anchors.top: parent.top
                        anchors.topMargin: 50
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        font.pixelSize: 12
                    }

                    Text {
                        text: "OFF"
                        color: Config.highlightColor
                        anchors.right: parent.right
                        anchors.rightMargin: 200
                        anchors.verticalCenter: parent.verticalCenter
                    }

                    CharonSwitch {
                        id: animationToggle

                        anchors.right: parent.right
                        anchors.rightMargin: 125
                        anchors.verticalCenter: parent.verticalCenter

                    checked: Config.animationsEnabled

                        onCheckedChanged: {
                            Config.animationsEnabled = checked
                        }
                    }

                    Text {
                        text: "ON"
                        color: Config.highlightColor
                        anchors.right: parent.right
                        anchors.rightMargin: 100
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
        }
    }
}