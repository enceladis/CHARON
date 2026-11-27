
pragma Singleton

import QtQuick
import QtCore

QtObject {
    //defaults
    property color defaultAccentColor: "#F48C9E"
    // Backgrounds
    property color defaultWindowBackgroundColor: "#160D22"
    property color defaultContentBackgroundColor: "#21122E"
    property color defaultSidebarBackgroundColor: "#291735"
    property color defaultTopBarBackgroundColor: "#321B3A"
    property color defaultSectionBackgroundColor: "#432342"

    // Text colors
    property color defaultTitleColor: "#F77DAA"
    property color defaultSubtitleColor: "#F5A0BC"
    property color defaultTextColor: "#E8DCEB"

    // Button colors
    property color defaultButtonTextColor: "#FFF0F5"   

    //Public configuration properties
    property alias accentColor: stored.accentColor
    //backgrounds
    property alias windowBackgroundColor: stored.windowBackgroundColor
    property alias contentBackgroundColor: stored.contentBackgroundColor
    property alias sidebarBackgroundColor: stored.sidebarBackgroundColor
    property alias topBarBackgroundColor: stored.topBarBackgroundColor
    property alias sectionBackgroundColor: stored.sectionBackgroundColor

    // Text colors
    property alias titleColor: stored.titleColor
    property alias subtitleColor: stored.subtitleColor
    property alias textColor: stored.textColor

    // Button colors
    property alias buttonColor: stored.buttonColor
    property alias buttonHoverColor: stored.buttonHoverColor
    property alias buttonPressedColor: stored.buttonPressedColor
    property alias buttonTextColor: stored.buttonTextColor

    //persistant storage
    property var stored: Settings {
        id: stored

        category: "Appearance"
        property color accentColor: "#F48C9E"
        property color windowBackgroundColor: "#140C20"
        property color contentBackgroundColor: "#1B1123"
        property color sidebarBackgroundColor: "#201428"
        property color topBarBackgroundColor: "#251329"
        property color sectionBackgroundColor: "#302039"

        // Text colors
        property color titleColor: "#F48C9E"
        property color subtitleColor: "#F5C6A5"
        property color textColor: "#E8DCEB"

        // Button colors
        property color buttonColor: "#A34D83"
        property color buttonHoverColor: "#B45E91"
        property color buttonPressedColor: "#843E6C"
        property color buttonTextColor: "#E8DCEB"
        
    }

    //Restoring defaults
    function restoreDefaults() {
        
    }
}