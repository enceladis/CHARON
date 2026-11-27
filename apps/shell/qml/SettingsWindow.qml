import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.charon.shell

ApplicationWindow {
    id: root

    width: 1000
    height: 600
    visible: true
    title: "charon settings"

    color: Config.windowBackgroundColor

    property string currentPage: "General"

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        // Top bar
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: Config.topBarBackgroundColor

            Text {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 16

                text: "Settings"
                color: Config.titleColor
                font.pixelSize: 20
                font.bold: true
            }
        }

        // Main area
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 0

            // Sidebar
            Rectangle {
                Layout.preferredWidth: 180
                Layout.fillHeight: true
                color: Config.sidebarBackgroundColor

                ScrollView {
                    id: sidebarScroll

                    anchors.fill: parent
                    anchors.margins: 4

                    ScrollBar.vertical.policy: ScrollBar.AsNeeded

                    ColumnLayout {
                        width: sidebarScroll.width - 8
                        spacing: 4

                        Button {
                            Layout.fillWidth: true
                            text: "General"
                            
                            background: Rectangle {
                                radius: 12

                                color: parent.down
                                    ? Config.buttonPressedColor
                                    : parent.hovered
                                        ? Config.buttonHoverColor
                                        : Config.buttonColor
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.buttonTextColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "General"
                        }

                        Button {
                            Layout.fillWidth: true
                            text: "Appearance"

                            background: Rectangle {
                                radius: 12

                                color: parent.down
                                    ? Config.buttonPressedColor
                                    : parent.hovered
                                        ? Config.buttonHoverColor
                                        : Config.buttonColor
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.buttonTextColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "Appearance"
                        }

                        Button {
                            Layout.fillWidth: true
                            text: "Desktop"

                            background: Rectangle {
                                radius: 12

                                color: parent.down
                                    ? Config.buttonPressedColor
                                    : parent.hovered
                                        ? Config.buttonHoverColor
                                        : Config.buttonColor
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.buttonTextColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "Desktop"
                        }

                        Button {
                            Layout.fillWidth: true
                            text: "Notifications"

                            background: Rectangle {
                                radius: 12

                                color: parent.down
                                    ? Config.buttonPressedColor
                                    : parent.hovered
                                        ? Config.buttonHoverColor
                                        : Config.buttonColor
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.buttonTextColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "Notifications"
                        }

                        Button {
                            Layout.fillWidth: true
                            text: "About"

                            background: Rectangle {
                                radius: 12

                                color: parent.down
                                    ? Config.buttonPressedColor
                                    : parent.hovered
                                        ? Config.buttonHoverColor
                                        : Config.buttonColor
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.buttonTextColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "About"
                        }
                    }
                }
            }

            // Content area
            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: Config.contentBackgroundColor
                radius: 15

                StackLayout {
                    anchors.fill: parent

                    currentIndex: {
                        switch (root.currentPage) {
                            case "General": return 0
                            case "Appearance": return 1
                            case "Desktop": return 2
                            case "Notifications": return 3
                            case "About": return 4
                            default: return 0
                        }
                    }

                    GeneralPage{}
                    AppearancePage{}
                    DesktopPage{}
                    NotificationsPage{}
                    AboutPage{}
                }
            }
        }
    }
}

