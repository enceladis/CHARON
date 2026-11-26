import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: root

    visible: true
    width: 1000
    height: 650
    title: "CHARON"

    color: "#101014"

    Text {
        anchors.centerIn: parent

        text: "ODE"
        color: "#EAE8F0"
        font.pixelSize: 48
        font.weight: Font.Medium
    }
}