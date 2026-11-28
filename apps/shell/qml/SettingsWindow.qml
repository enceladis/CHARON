import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: root

    signal closeSettings()

    width: 1000
    height: 600
    visible: true
    title: "charon settings"

    color: Config.windowColor

    property string currentPage: "General"

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        // Top bar
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            color: Qt.lighter(Config.secondaryWindowColor, 1.2)

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                text: "Settings"
                color: Config.highlightColor
                font.pixelSize: 20
                font.bold: true
            }

            Button {
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 10

                background: Rectangle {
                    width: 20
                    height: 20
                    radius: 10
                    color: Config.highlightColor
                }

                onClicked: {
                    Config.revertChanges()
                    root.closeSettings()
                    root.currentPage = "General"
                }
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
                color: Qt.darker(Config.secondaryWindowColor, 1.1)
                border.width: 1
                border.color: Qt.lighter(Config.secondaryWindowColor, 1.2)

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
                                radius: 50

                                color: parent.down
                                    ? Qt.darker(Config.secondaryWindowColor, 1.3)
                                    : parent.hovered
                                        ? Qt.lighter(Config.secondaryWindowColor, 1.1)
                                        : Qt.darker(Config.secondaryWindowColor, 1.1)

                                SelectionIndicator {
                                    selected: root.currentPage === "General"
                                }
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.textColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "General"
                        }

                        Button {
                            Layout.fillWidth: true
                            text: "Appearance"

                            background: Rectangle {
                                radius: 50

                                color: parent.down
                                    ? Qt.darker(Config.secondaryWindowColor, 1.3)
                                    : parent.hovered
                                        ? Qt.lighter(Config.secondaryWindowColor, 1.1)
                                        : Qt.darker(Config.secondaryWindowColor, 1.1)

                                SelectionIndicator {
                                    selected: root.currentPage === "Appearance"
                                }
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.textColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "Appearance"
                        }

                        Button {
                            Layout.fillWidth: true
                            text: "Desktop"

                            background: Rectangle {
                                radius: 50

                                color: parent.down
                                    ? Qt.darker(Config.secondaryWindowColor, 1.3)
                                    : parent.hovered
                                        ? Qt.lighter(Config.secondaryWindowColor, 1.1)
                                        : Qt.darker(Config.secondaryWindowColor, 1.1)

                                SelectionIndicator {
                                    selected: root.currentPage === "Desktop"
                                }
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.textColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "Desktop"
                        }

                        Button {
                            Layout.fillWidth: true
                            text: "Notifications"

                            background: Rectangle {
                                radius: 50

                                color: parent.down
                                    ? Qt.darker(Config.secondaryWindowColor, 1.3)
                                    : parent.hovered
                                        ? Qt.lighter(Config.secondaryWindowColor, 1.1)
                                        : Qt.darker(Config.secondaryWindowColor, 1.1)

                                SelectionIndicator {
                                    selected: root.currentPage === "Notifications"
                                }
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.textColor
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }

                            onClicked: root.currentPage = "Notifications"
                        }

                        Button {
                            Layout.fillWidth: true
                            text: "About"

                            background: Rectangle {
                                radius: 50

                                color: parent.down
                                    ? Qt.darker(Config.secondaryWindowColor, 1.3)
                                    : parent.hovered
                                        ? Qt.lighter(Config.secondaryWindowColor, 1.1)
                                        : Qt.darker(Config.secondaryWindowColor, 1.1)

                                SelectionIndicator {
                                    selected: root.currentPage === "About"
                                }
                            }

                            contentItem: Text {
                                text: parent.text
                                color: Config.textColor
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
                color: Config.windowColor
                border.width: 1
                border.color: Qt.lighter(Config.windowColor, 1.25)

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

