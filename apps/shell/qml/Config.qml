
pragma Singleton

import QtQuick
import QtCore

QtObject {
    //defaults
    //colors
    property color defaultAccentColor: "#E68BAE"
    property color defaultHighlightColor: "#F27DA7"

    // Background colors
    property color defaultWindowColor: "#1B1124"
    property color defaultSecondaryWindowColor: "#35213F"

    // Text colors
    property color defaultTextColor: "#e7c8e1"

    // Button colors
    property color defaultButtonColor: "#cf70c6"

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

    //Live config
    property color accentColor: stored.accentColor
    property color highlightColor: stored.highlightColor

    //backgrounds
    property color windowColor: stored.windowColor
    property color secondaryWindowColor: stored.secondaryWindowColor

    // Text colors
    property color textColor: stored.textColor

    // Button colors
    property color buttonColor: stored.buttonColor

    //animations
    property int animationsEnabled: stored.animationsEnabled
    property int animationSpeed: stored.animationSpeed

    //wallpaper
    property string wallpaperPath: stored.wallpaperPath

    //Island / dock
    property int dockHeight: stored.dockHeight
    property int dockWidth: stored.dockWidth
    property int islandHeight: stored.islandHeight
    property int islandWidth: stored.islandWidth
    property int islandMargin: stored.islandMargin
    property int dockMargin: stored.dockMargin

    //corners n stuff
    property int cornerRadius: stored.cornerRadius

    //persistant storage
    property var stored: Settings {
        id: stored

        category: "Appearance"
        property color accentColor: "#E68BAE"
        property color highlightColor: "#F27DA7"

        //backgrounds
        property color windowColor: "#1B1124"
        property color secondaryWindowColor: "#35213F"

        // Text colors
        property color textColor: "#e7c8e1"

        // Button colors
        property color buttonColor: "#cf70c6"

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
        stored.accentColor = defaultAccentColor
        stored.highlightColor = defaultHighlightColor
        stored.windowColor = defaultWindowColor
        stored.secondaryWindowColor = defaultSecondaryWindowColor
        stored.buttonColor = defaultButtonColor
        stored.textColor = defaultTextColor
    }

    function restoreAnimations() {

    }

    function applyWallpaper() {
        stored.wallpaperPath = wallpaperPath
    }

    function revertChanges() {
        accentColor = stored.accentColor
        highlightColor = stored.highlightColor
        windowColor = stored.windowColor
        secondaryWindowColor = stored.secondaryWindowColor
        buttonColor = stored.buttonColor
        textColor = stored.textColor
        wallpaperPath = stored.wallpaperPath
    }
}