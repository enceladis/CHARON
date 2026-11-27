import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.charon.shell

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
                color: Qt.lighter(Config.defaultContentBackgroundColor, 1.1)
                Layout.fillWidth: true
                height: 200
                radius: 15
                    WallpaperWheel{}
                }
            }
        }
    }
}