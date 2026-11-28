use cxx_qt_build::{CxxQtBuilder, QmlFile, QmlModule};

fn main() {
    CxxQtBuilder::new_qml_module(
        QmlModule::new("org.charon.shell")
            .qml_file("qml/Main.qml")
            .qml_file("qml/SettingsWindow.qml")
            .qml_file("qml/GeneralPage.qml")
            .qml_file("qml/AppearancePage.qml")
            .qml_file("qml/DesktopPage.qml")
            .qml_file("qml/NotificationsPage.qml")
            .qml_file("qml/AboutPage.qml")
            .qml_file("qml/SelectionIndicator.qml")
            .qml_file("qml/CharonSwitch.qml")
            .qml_file("qml/WallpaperWheel.qml")
            .qml_file("qml/Wallpaper.qml")
            .qml_file("qml/Dock.qml")
            .qml_file("qml/Island.qml")
            .qml_file(QmlFile::from("qml/Config.qml").singleton(true)),
    )
    .qrc_resources(["../../assets/wallpapers/CHARON-default-wallpaper.png"])
    .qrc_resources(["../../assets/wallpapers/CHARON-default-background.png"])
    .qrc_resources(["../../assets/wallpapers/CHARON-cursive-background.png"])
    .qrc_resources(["../../assets/wallpapers/background.png"])
    .qrc_resources(["../../assets/icons/defaultIcon.png"])
    .qrc_resources(["../../assets/icons/surprisedIcon.png"])
    .qrc_resources(["../../assets/icons/sleepingIcon.png"])
    .build();
}