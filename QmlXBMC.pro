TEMPLATE = app

QT += qml quick

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

OTHER_FILES += \
    main.qml \
    VideoView.qml \
    HomeView.qml \
    PicturesView.qml \
    MusicView.qml \
    ProgramsView.qml \
    SettingView.qml \
    SettingContentView.qml \
    AppearanceContentModel.qml
