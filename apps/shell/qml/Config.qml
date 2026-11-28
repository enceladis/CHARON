
pragma Singleton

import QtQuick
import QtCore

QtObject {
    //defaults
    //colors
    property color defaultAccentColor: "#F48C9E"

    // Background colors
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
    property color defaultButtonColor: "#A34D83"
    property color defaultButtonHoverColor: "#B45E91"
    property color defaultButtonPressedColor: "#843E6C"
    property color defaultButtonTextColor: "#FFF0F5"   

    //animations
    property bool defaultAnimationsEnabled: true
    property int defaultAnimationSpeed: 1

    //wallpaper
    property string defaultWallpaperPath: "qrc:/qt/qml/org/charon/shell/assets/wallpapers/background.png"

    //dock / island
    property int defaultIslandHeight: 50
    property int defaultIslandWidth: 200
    property int defaultDockHeight: 50
    property int defaultDockWidth: 200
    property int defaultDockMargin: 15
    property int defaultIslandMargin: 15

    //corners n stuff
    property int defaultCornerRadius: 15

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

    //animations
    property alias animationsEnabled: stored.animationsEnabled
    property alias animationSpeed: stored.animationSpeed

    //wallpaper
    property alias wallpaperPath: stored.wallpaperPath

    //Island / dock
    property alias dockHeight: stored.dockHeight
    property alias dockWidth: stored.dockWidth
    property alias islandHeight: stored.islandHeight
    property alias islandWidth: stored.islandWidth
    property alias islandMargin: stored.islandMargin
    property alias dockMargin: stored.dockMargin

    //corners n stuff
    property alias cornerRadius: stored.cornerRadius

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

        //animations
        property bool animationsEnabled: true
        property int animationSpeed: 1

        //wallpaper
        property string wallpaperPath: "qrc:/qt/qml/org/charon/shell/assets/wallpapers/background.png"

        //island / dock
        property int dockHeight: 50
        property int dockWidth: 200
        property int islandHeight: 50
        property int islandWidth: 200
        property int islandMargin: 15
        property int dockMargin: 15

        //corners n stuff
        property int cornerRadius: 15
        
    }

    //Restoring defaults
    function restoreDefaults() {
        stored.wallpaperPath = defaultWallpaperPath
    }

    function restoreColors() {

    }

    function restoreAnimations() {

    }
}