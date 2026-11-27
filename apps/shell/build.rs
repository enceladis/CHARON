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
            .qml_file(QmlFile::from("qml/Config.qml").singleton(true)),
    )
    .build();
}