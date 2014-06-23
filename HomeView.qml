import QtQuick 2.2

Item {
    height: idScreenWindow.height / 10 * 9
    width: idScreenWindow.width
    Column {
        Rectangle {
            id: idMainContentRect
            height: parent.height / 9 * 8
            width: parent.width

            Image {
                source: "media/background/background.png"
                anchors.fill: parent
            }

            Grid {
                columns: 2
                spacing: 50
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                Rectangle {
                    width: idMainContentRect.width / 10 * 4
                    height: idMainContentRect.height / 10 * 4

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }

                    Image {
                        id: idVideoImage
                        source: "media/background/videos.png"

                        anchors.leftMargin: 8
                        anchors.rightMargin: 8
                        anchors.topMargin: 8
                        anchors.bottomMargin: 50
                        anchors.fill:  parent

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                showVideoView.running = true
                                idMainWindow.state = "statevideoview"
                            }
                        }
                    }

                    Text {
                        text: "VIDEOS"
                        font.family: "Helvetica"
                        font.bold: true
                        font.pointSize: 20
                        color: "white"

                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 30
                    }
                }

                Rectangle {
                    width: idMainContentRect.width / 10 * 4
                    height: idMainContentRect.height / 10 * 4

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill: parent
                    }

                    Image {
                        id: idPictureImage
                        source: "media/background/pictures.png"

                        anchors.leftMargin: 8
                        anchors.rightMargin: 8
                        anchors.topMargin: 8
                        anchors.bottomMargin: 50
                        anchors.fill:  parent

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                showPicturesView.running = true
                                idMainWindow.state = "statepicturesview"
                            }
                        }
                    }

                    Text {
                        text: "PICTURES"
                        font.family: "Helvetica"
                        font.bold: true
                        font.pointSize: 20
                        color: "white"

                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 30
                    }
                }

                Rectangle {
                    width: idMainContentRect.width / 10 * 4
                    height: idMainContentRect.height / 10 * 4

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill: parent
                    }

                    Image {
                        id: idMusicmage
                        source: "media/background/music.png"

                        anchors.leftMargin: 8
                        anchors.rightMargin: 8
                        anchors.topMargin: 8
                        anchors.bottomMargin: 50
                        anchors.fill:  parent
                    }

                    Text {
                        text: "MUSIC"
                        font.family: "Helvetica"
                        font.bold: true
                        font.pointSize: 20
                        color: "white"

                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 30
                    }
                }

                Rectangle {
                    width: idMainContentRect.width / 10 * 4
                    height: idMainContentRect.height / 10 * 4

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill: parent
                    }

                    Image {
                        id: idPragramImage
                        source: "media/background/programs.png"

                        anchors.leftMargin: 8
                        anchors.rightMargin: 8
                        anchors.topMargin: 8
                        anchors.bottomMargin: 50
                        anchors.fill:  parent
                    }

                    Text {
                        text: "PROGRAMS"
                        font.family: "Helvetica"
                        font.bold: true
                        font.pointSize: 20
                        color: "white"

                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 10
                        anchors.left: parent.left
                        anchors.leftMargin: 30
                    }
                }
            }
        }

        Image {
            source: "media/floor.png"
            height: idScreenWindow.height / 10
            width: idScreenWindow.width
            fillMode: Image.TileHorizontally
        }

        anchors.fill: parent
    }

    Column {
        id: idExit
        width: 64
        height: 100
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10

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
        width: 64
        height: 100
        anchors.left: idExit.right
        anchors.leftMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10

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



