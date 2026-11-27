import QtQuick
import QtQuick.Controls
import org.charon.shell

ApplicationWindow {
    id: root

    visible: true
    width: 1000
    height: 700

    title: "CHARON"

    color: Config.backgroundColor

    SettingsWindow {}
}