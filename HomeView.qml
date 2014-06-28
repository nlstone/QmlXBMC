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

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                showMusicView.running = true
                                idMainWindow.state = "statemusicview"
                            }
                        }
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

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                showProgramsView.running = true
                                idMainWindow.state = "stateprogramsview"
                            }
                        }
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
}



