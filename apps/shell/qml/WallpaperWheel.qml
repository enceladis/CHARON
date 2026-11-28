import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects

Item {
    id: root

    anchors.fill: parent

    property real cardWidth: cardHeight * 2
    property real cardHeight: height * 0.65
    property int currentIndex: 0
    property real focusedScale: 1.0
    property real unfocusedScale: 0.8
    property real focusedGap: cardWidth * 0.1
    property real unfocusedGap: cardWidth * 0.05
    property bool overlayMode: false

    focus: true

    Keys.onPressed: (event) => {
        if (event.key === Qt.Key_Right) {
            nextWallpaper()
            event.accepted = true
        }else if (event.key === Qt.Key_Left) {
            previousWallpaper()
            event.accepted = true
        } else if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
            applyWallpaper()
            event.accepted = true
        }
    }

    function nextWallpaper() {
        if (currentIndex < wallpapers.length - 1)
            currentIndex++
    }
    function previousWallpaper() {
        if (currentIndex > 0)
            currentIndex --
    }
    function cardWidthAt(index) {
        return cardWidth * (index === currentIndex ? focusedScale : unfocusedScale)
    }
    function gap(leftIndex, rightIndex) {
        return (leftIndex === currentIndex || rightIndex === currentIndex)
            ? focusedGap
            : unfocusedGap
    }
    function cardX(index) {
        var x = 0

        for (var i = 0; i < index; i++) {
            x += cardWidthAt(i)
            x += gap(i, i  + 1)
        }

        return x
    }
    function totalWidth() {
        var total = 0

        for (var i = 0; i < wallpapers.length; i++) {
            total += cardWidthAt(i)

            if (i < wallpapers.length - 1)
                total += gap(i, i + 1)
        }
        return total
    }   
    function centeredCard(index) {
        return width / 2 + cardX(index) - cardX(currentIndex) - cardWidthAt(currentIndex) / 2
    }
    function takeFocus() {
        root.forceActiveFocus()
    }
    function applyWallpaper() {
        Config.wallpaperPath = root.wallpapers[root.currentIndex]
    }

    property var wallpapers: [
        "qrc:/qt/qml/org/charon/shell/assets/wallpapers/background.png",
        "qrc:/qt/qml/org/charon/shell/assets/wallpapers/CHARON-default-background.png",
        "qrc:/qt/qml/org/charon/shell/assets/wallpapers/CHARON-cursive-background.png",
        "qrc:/qt/qml/org/charon/shell/assets/wallpapers/CHARON-default-wallpaper.png"
    ]

    Item {
        id: wallpaperRow

        width: parent.width
        height: parent.height * 0.75
        anchors.top: parent.top

        Repeater {
            model: root.wallpapers

            delegate: Item {
                width: root.cardWidthAt(index)
                height: parent.height
                anchors.verticalCenter: parent.verticalCenter

                x: root.centeredCard(index)

                Behavior on x {
                    NumberAnimation {
                        duration: 350
                        easing.type: Easing.OutCubic
                    }
                }

                Rectangle {
                    width: parent.width
                    height: root.cardHeight * (index === root.currentIndex ? root.focusedScale : root.unfocusedScale)
                    anchors.verticalCenter: parent.verticalCenter

                    radius: 16
                    color: "transparent"

                    Behavior on width {
                        NumberAnimation {
                            duration: 350
                            easing.type: Easing.OutCubic
                        }
                    }

                    Behavior on height {
                        NumberAnimation {
                            duration: 350
                            easing.type: Easing.OutCubic
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            root.currentIndex = index
                            root.forceActiveFocus()
                        }
                    }

                    Image {
                        id: wallpaperImage

                        anchors.fill: parent
                        source: modelData
                        fillMode: Image.PreserveAspectCrop
                        asynchronous: true
                        visible: false
                        smooth: true
                        mipmap: true
                    }

                    Item {
                        id: roundedMask
                        anchors.fill: wallpaperImage
                        layer.enabled: true
                        visible: false

                        Rectangle {
                            anchors.fill: parent
                            radius: 16
                            color: "black"
                        }
                    }

                    MultiEffect {
                        anchors.fill: parent
                        source: wallpaperImage

                        maskEnabled: true
                        maskSource: roundedMask
                    }
                }
            }
        }
    }

    Button {
        width: root.width * 0.2
        height: root.height * 0.2

        text: "Apply"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: root.height * 0.05

        background: Rectangle {
            anchors.fill: parent
            radius: height / 2

            color: parent.down
                ? Config.buttonPressedColor
                : parent.hovered
                ? Config.buttonHoverColor
                : Config.buttonColor
        }

        contentItem: Text {
            text: "Apply"
            color: Config.textColor
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

        }

        onClicked: {
            applyWallpaper()
        }
    }
}