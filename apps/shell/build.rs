use cxx_qt_build::{CxxQtBuilder, QmlFile, QmlModule};

fn main() {
    CxxQtBuilder::new_qml_module(
        QmlModule::new("org.charon.shell")
            .qml_file("qml/Main.qml")
            .qml_file(QmlFile::from("qml/Config.qml").singleton(true)),
    )
    .build();
}