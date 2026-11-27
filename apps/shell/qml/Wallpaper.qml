import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Image {
    id: root

    source: Config.wallpaperPath
    anchors.fill: parent
    fillMode: Image.PreserveAspectCrop
}