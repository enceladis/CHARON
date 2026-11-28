import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects
import org.charon.shell

Item {
    id: root

    anchors.fill: parent

    property int appSize: Config.dockHeight - (Config.dockHeight / 5)
    property bool spotlightOpen: false

    Rectangle {
        height: Config.dockHeight
        width: Config.dockWidth
        radius: Config.cornerRadius
        color: Config.windowColor

        Button {
            id: spotlightOpener

            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            height: Config.dockHeight
            width: Config.dockHeight

            background: Rectangle{
                anchors.fill: parent
                color: parent.hovered
                    ? Qt.lighter(Config.windowColor, 1.3)
                    : Config.windowColor
                radius: Config.cornerRadius
            }

            contentItem: Image {
                id: spotlightIcon

                source: {root.spotlightOpen === false 
                    ? "qrc:/qt/qml/org/charon/shell/assets/icons/defaultIcon.png"
                    : "qrc:/qt/qml/org/charon/shell/assets/icons/surprisedIcon.png"
                }
                //source: "qrc:/qt/qml/org/charon/shell/assets/icons/defaultIcon.png"
                mipmap: true
                smooth: true

                anchors.fill: parent
                fillMode: Image.PreserveAspectCrop
                asynchronous: true
            }

            onClicked: {
                root.spotlightOpen = !root.spotlightOpen
            }
        }
    }

}