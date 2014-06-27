import QtQuick 2.2
import QtQuick.Window 2.1

Window {
    visible: true
    width: 1280
    height: 960
    id: idScreenWindow


    Item {
        id: idMainWindow
        anchors.fill: parent
        property string viewType: "list"

        Image {
            source: "media/background/background.png"
            anchors.fill: parent
        }

        Column {
            Rectangle {
                id: idHeadRect
                height: parent.height / 10
                width: parent.width

                Image {
                    source: "media/header.png"
                    fillMode: Image.TileHorizontally

                    anchors.fill: parent
                }

                Image {
                    id: idHomeIcon
                    source: "media/icon_home.png"
                    anchors.left: parent.left
                    anchors.leftMargin: 50
                    anchors.verticalCenter: parent.verticalCenter

                    visible: false

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            showHomeView.running = true
                            idMainWindow.state = "homevideoview"
                        }
                    }
                }

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10
                    Image {
                        source: "media/PlayerControls2-PreviousNF.png"

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                parent.source = "media/PlayerControls2-PreviousFO.png"
                            }
                            onExited: {
                                parent.source = "media/PlayerControls2-PreviousNF.png"
                            }

                        }
                    }
                    Image {
                        source: "media/PlayerControls2-PlayNF.png"

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                parent.source = "media/PlayerControls2-PlayFO.png"
                            }
                            onExited: {
                                parent.source = "media/PlayerControls2-PlayNF.png"
                            }

                        }
                    }
                    Image {
                        source: "media/PlayerControls2-NextNF.png"

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: {
                                parent.source = "media/PlayerControls2-NextFO.png"
                            }
                            onExited: {
                                parent.source = "media/PlayerControls2-NextNF.png"
                            }

                        }
                    }
                }

                BorderImage {
                    width: 300
                    border.left: 10
                    border.right: 10
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter

                    source: "media/HeaderProgressBack.png"
                }


            }

            HomeView {
                id: idHomeView
                opacity: 1
                visible: true
            }

            VideoView {
                id: idVideoView
                opacity: 0
                visible: false                
            }
            PicturesView {
                id: idPicturesView
                opacity: 0
                visible: false
            }
            MusicView {
                id: idMusicView
                opacity: 0
                visible: false
            }
            ProgramsView {
                id: idProgramsView
                opacity: 0
                visible: false
            }
            SettingView {
                id: idSettingView
                opacity: 0
                visible: false
            }
        }

        NumberAnimation {
            id: showVideoView; target: idVideoView; property: "opacity"; to: 1; duration: 200
        }
        NumberAnimation {
            id: showHomeView; target: idHomeView; property: "opacity"; to: 1; duration: 200
        }
        NumberAnimation {
            id: showPicturesView; target: idPicturesView; property: "opacity"; to: 1; duration: 200
        }
        NumberAnimation {
            id: showMusicView; target: idMusicView; property: "opacity"; to: 1; duration: 200
        }
        NumberAnimation {
            id: showProgramsView; target: idProgramsView; property: "opacity"; to: 1; duration: 200
        }
        NumberAnimation {
            id: showSettingView; target: idSettingView; property: "opacity"; to: 1; duration: 200
        }

        Row {
            id: idHomeMenuRow
            width: 64
            height: 100
            anchors.left: parent.left
            anchors.leftMargin: 50
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            spacing: 25
            visible: true

            Column {
                id: idExit
                width: 64
                height: 100

                Image {
                    id: idExitBack
                    source: "media/IconBack.png"
                    width: 64
                    height: 64
                    Image {
                        source: "media/icon_shutdown.png"
                        anchors.fill: parent
                        fillMode: Image.Stretch

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                idExitBack.source = "media/IconBack-focus.png"
                            }

                            onExited: {
                                idExitBack.source = "media/IconBack.png"
                            }

                            onClicked: {
                                Qt.quit()
                            }

                        }
                    }
                }

                Image {
                    width: 64
                    height: 36
                    source: "media/OSDProgressBack.png"
                    fillMode: Image.Stretch
                }
            }
            Column {
                id: idSettings
                width: parent.width
                height: 100

                Image {
                    id: idSettingsBack
                    source: "media/IconBack.png"
                    width: 64
                    height: 64
                    Image {
                        source: "media/icon_settings.png"
                        anchors.fill: parent
                        fillMode: Image.Stretch

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                idSettingsBack.source = "media/IconBack-focus.png"
                            }

                            onExited: {
                                idSettingsBack.source = "media/IconBack.png"
                            }

                            onClicked: {
                                showSettingView.running = true
                                idMainWindow.state = "statesettingview"
                            }
                        }
                    }
                }

                Image {
                    width: 64
                    height: 36
                    source: "media/OSDProgressBack.png"
                    fillMode: Image.Stretch
                }
            }
        }

        Row {
            id: idSubViewMenuRow
            width: 64
            height: 100
            anchors.left: parent.left
            anchors.leftMargin: 50
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            spacing: 25
            visible: false

            Column {
                id: idBackColumn
                width: 64
                height: 100

                Image {
                    id: idBackMenu
                    source: "media/IconBack.png"
                    width: 64
                    height: 64
                    Image {
                        source: "media/icon_back.png"
                        anchors.fill: parent
                        fillMode: Image.Stretch

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                idBackMenu.source = "media/IconBack-focus.png"
                            }

                            onExited: {
                                idBackMenu.source = "media/IconBack.png"
                            }

                            onClicked: {
                                if( idMainWindow.state == "statevideoview" ||
                                    idMainWindow.state == "statemusicview" ||
                                    idMainWindow.state == "statepicturesview" ||
                                    idMainWindow.state == "stateprogramsview" )
                                {
                                    showHomeView.running = true;
                                    idMainWindow.state = "homevideoview";
                                }
                            }
                        }
                    }
                }

                Image {
                    width: 64
                    height: 36
                    source: "media/OSDProgressBack.png"
                    fillMode: Image.Stretch
                }
            }
            Column {
                id: idViewColumn
                width: parent.width
                height: 100

                Image {
                    id: idViewMenu
                    source: "media/IconBack.png"
                    width: 64
                    height: 64
                    Image {
                        source: "media/icon_view.png"
                        anchors.fill: parent
                        fillMode: Image.Stretch

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                idViewMenu.source = "media/IconBack-focus.png"
                            }

                            onExited: {
                                idViewMenu.source = "media/IconBack.png"
                            }

                            onClicked: {
                                // Change view type, from "list" to "icon", or "icon" to "list"
                                if( idMainWindow.viewType == "list" )
                                {
                                    idMainWindow.viewType = "icon";
                                    if( idMainWindow.state == "statevideoview" )
                                    {

                                    }
                                }
                                else if( idMainWindow.viewType == "icon" )
                                {
                                    idMainWindow.viewType = "list";
                                    console.log("icon to list.");
                                }
                            }
                        }
                    }
                }

                Image {
                    width: 64
                    height: 36
                    source: "media/OSDProgressBack.png"
                    fillMode: Image.Stretch
                }
            }

            Column {
                id: idFilterColumn
                width: parent.width
                height: 100

                Image {
                    id: idFilterMenu
                    source: "media/IconBack.png"
                    width: 64
                    height: 64
                    Image {
                        source: "media/icon_filter.png"
                        anchors.fill: parent
                        fillMode: Image.Stretch

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true

                            onEntered: {
                                idFilterMenu.source = "media/IconBack-focus.png"
                            }

                            onExited: {
                                idFilterMenu.source = "media/IconBack.png"
                            }

                            onClicked: {

                            }
                        }
                    }
                }

                Image {
                    width: 64
                    height: 36
                    source: "media/OSDProgressBack.png"
                    fillMode: Image.Stretch
                }
            }

        }

        states: [
            State {
                name: "statemainview"
                PropertyChanges {target: idVideoView; opacity: 0 }
                PropertyChanges { target: idVideoView; visible: false }
                PropertyChanges { target: idHomeView; visible: true }
                PropertyChanges { target: idHomeIcon; visible: false }
                PropertyChanges { target: idHomeMenuRow; visible: true }
                PropertyChanges { target: idSubMenuRow; visible: false }

            },
            State {
                name: "statevideoview"
                PropertyChanges {target: idHomeView; opacity: 0 }
                PropertyChanges { target: idHomeView; visible: false }
                PropertyChanges { target: idVideoView; visible: true }
                PropertyChanges { target: idHomeIcon; visible: true }
                PropertyChanges { target: idHomeMenuRow; visible: false }
                PropertyChanges { target: idSubViewMenuRow; visible: true }
            },
            State {
                name: "statepicturesview"
                PropertyChanges {target: idHomeView; opacity: 0 }
                PropertyChanges { target: idHomeView; visible: false }
                PropertyChanges { target: idPicturesView; visible: true }
                PropertyChanges { target: idHomeIcon; visible: true }
                PropertyChanges { target: idHomeMenuRow; visible: false }
                PropertyChanges { target: idSubViewMenuRow; visible: true }
            },
            State {
                name: "statemusicview"
                PropertyChanges {target: idHomeView; opacity: 0 }
                PropertyChanges { target: idHomeView; visible: false }
                PropertyChanges { target: idMusicView; visible: true }
                PropertyChanges { target: idHomeIcon; visible: true }
                PropertyChanges { target: idHomeMenuRow; visible: false }
                PropertyChanges { target: idSubViewMenuRow; visible: true }
            },
            State {
                name: "stateprogramsview"
                PropertyChanges {target: idHomeView; opacity: 0 }
                PropertyChanges { target: idHomeView; visible: false }
                PropertyChanges { target: idProgramsView; visible: true }
                PropertyChanges { target: idHomeIcon; visible: true }
                PropertyChanges { target: idHomeMenuRow; visible: false }
                PropertyChanges { target: idSubViewMenuRow; visible: true }
           },
           State {
                name: "statesettingview"
                PropertyChanges { target: idHomeView; opacity: 0 }
                PropertyChanges { target: idHomeView; visible: false }
                PropertyChanges { target: idSettingView; visible: true }
                PropertyChanges { target: idHomeIcon; visible: true }
                PropertyChanges { target: idHomeMenuRow; visible: false }
                PropertyChanges { target: idSubViewMenuRow; visible: true }
            }
        ]
    }
}
