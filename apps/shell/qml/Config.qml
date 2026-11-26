
pragma Singleton

import QtQuick
import QtCore

QtObject {
    //defaults
    property color defaultAccentColor: "#F48C9E"
    property color defaultBackgroundColor: "#251329"

    //Public configuration properties
    property alias accentColor: stored.accentColor
    property alias backgroundColor: stored.backgroundColor

    //persistant storage
    property var stored: Settings {
        id: stored

        category: "Appearance"

        property color accentColor: "#F48C9E"
        property color backgroundColor: "#251329"
    }

    //Restoring defaults
    function restoreDefaults() {
        stored.accentColor = defaultAccentColor
        stored.backgroundColor = defaultBackgroundColor
    }
}