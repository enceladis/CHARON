import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.charon.shell

Item {
    id: root
    Layout.fillWidth: true
    Layout.fillHeight: true

    Text {
        text: "About"
        color: Config.highlightColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}