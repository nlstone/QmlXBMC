import QtQuick 2.2

Item {
    height: idScreenWindow.height / 10 * 9
    width: idScreenWindow.width
    Column {
        Rectangle {
            id: idSettingMainContentRect
            height: parent.height / 9 * 8
            width: parent.width

            Image {
                source: "media/background/background.png"
                anchors.fill: parent
            }

            Grid {
                columns: 2
                spacing: 20
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                Rectangle {
                    width: idSettingMainContentRect.width / 10 * 4.5
                    height: idSettingMainContentRect.height / 10 * 2

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }                    

                    Row {
                        anchors.fill: parent
                        anchors.topMargin: 15
                        anchors.leftMargin: 20
                        Column {
                            spacing: 20
                            width: parent.width - parent.height
                            height: parent.height

                            Text {
                                text: "Appearance"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 20
                                color: "white"
                            }

                            Text {
                                text: "Change the skin. Set language and region\nChange file listing options.Set up a\nscreensaver"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 12
                                color: "gray"
                            }
                        }

                        Image {
                            width: parent.height
                            height: parent.height
                            source: "media/icon_big_appearence.png"
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            idSettingContentView.state = "appearanceview"
                            showSettingContentView.running = true
                            idMainWindow.state = "statesettingcontentview"
                        }
                    }
                }

                Rectangle {
                    width: idSettingMainContentRect.width / 10 * 4.5
                    height: idSettingMainContentRect.height / 10 * 2

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }

                    Row {
                        anchors.fill: parent
                        anchors.topMargin: 15
                        anchors.leftMargin: 20
                        Column {
                            spacing: 20
                            width: parent.width - parent.height
                            height: parent.height

                            Text {
                                text: "Video"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 20
                                color: "white"
                            }

                            Text {
                                text: "Manage your video library. Set video playback\noptions.Change video library listing options. Set\nsubtitle fonts"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 12
                                color: "gray"
                            }
                        }

                        Image {
                            width: parent.height
                            height: parent.height
                            source: "media/icon_big_video.png"
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            idSettingContentView.state = "videoview"
                            showSettingContentView.running = true
                            idMainWindow.state = "statesettingcontentview"
                        }
                    }
                }

                Rectangle {
                    width: idSettingMainContentRect.width / 10 * 4.5
                    height: idSettingMainContentRect.height / 10 * 2

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }

                    Row {
                        anchors.fill: parent
                        anchors.topMargin: 15
                        anchors.leftMargin: 20
                        Column {
                            spacing: 20
                            width: parent.width - parent.height
                            height: parent.height

                            Text {
                                text: "Music"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 20
                                color: "white"
                            }

                            Text {
                                text: "Manage your music library. Set music playback\noptions. Change music listing options. Setup\nsong submission. Set karaoke options"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 12
                                color: "gray"
                            }
                        }

                        Image {
                            width: parent.height
                            height: parent.height
                            source: "media/icon_big_music.png"
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            idSettingContentView.state = "musicview"
                            showSettingContentView.running = true
                            idMainWindow.state = "statesettingcontentview"
                        }
                    }
                }

                Rectangle {
                    width: idSettingMainContentRect.width / 10 * 4.5
                    height: idSettingMainContentRect.height / 10 * 2

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }

                    Row {
                        anchors.fill: parent
                        anchors.topMargin: 15
                        anchors.leftMargin: 20
                        Column {
                            spacing: 20
                            width: parent.width - parent.height
                            height: parent.height

                            Text {
                                text: "Pictures"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 20
                                color: "white"
                            }

                            Text {
                                text: "Set picture listing options. Configure\nslideshows"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 12
                                color: "gray"
                            }
                        }

                        Image {
                            width: parent.height
                            height: parent.height
                            source: "media/icon_big_pictures.png"
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            idSettingContentView.state = "picturesview"
                            showSettingContentView.running = true
                            idMainWindow.state = "statesettingcontentview"
                        }
                    }
                }

                Rectangle {
                    width: idSettingMainContentRect.width / 10 * 4.5
                    height: idSettingMainContentRect.height / 10 * 2

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }

                    Row {
                        anchors.fill: parent
                        anchors.topMargin: 15
                        anchors.leftMargin: 20
                        Column {
                            spacing: 20
                            width: parent.width - parent.height
                            height: parent.height

                            Text {
                                text: "Weather"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 20
                                color: "white"
                            }

                            Text {
                                text: "Set three cities to collect weather information"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 12
                                color: "gray"
                            }
                        }

                        Image {
                            width: parent.height
                            height: parent.height
                            source: "media/icon_big_weather.png"
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            idSettingContentView.state = "weatherview"
                            showSettingContentView.running = true
                            idMainWindow.state = "statesettingcontentview"
                        }
                    }
                }

                Rectangle {
                    width: idSettingMainContentRect.width / 10 * 4.5
                    height: idSettingMainContentRect.height / 10 * 2

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }

                    Row {
                        anchors.fill: parent
                        anchors.topMargin: 15
                        anchors.leftMargin: 20
                        Column {
                            spacing: 20
                            width: parent.width - parent.height
                            height: parent.height

                            Text {
                                text: "Add-ons"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 20
                                color: "white"
                            }

                            Text {
                                text: "Manager your installed Add-ons. Browse for and \ninstall Add-ons from xbmc.org. Modify Add-on\n settings"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 12
                                color: "gray"
                            }
                        }

                        Image {
                            width: parent.height
                            height: parent.height
                            source: "media/icon_big_addons.png"
                        }
                    }
                }

                Rectangle {
                    width: idSettingMainContentRect.width / 10 * 4.5
                    height: idSettingMainContentRect.height / 10 * 2

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }

                    Row {
                        anchors.fill: parent
                        anchors.topMargin: 15
                        anchors.leftMargin: 20
                        Column {
                            spacing: 20
                            width: parent.width - parent.height
                            height: parent.height

                            Text {
                                text: "Services"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 20
                                color: "white"
                            }

                            Text {
                                text: "Setup control of XBMC via UPnP and HTTP.\nConfigure file sharing. Set internet access\noptions"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 12
                                color: "gray"
                            }
                        }

                        Image {
                            width: parent.height
                            height: parent.height
                            source: "media/icon_big_network.png"
                        }
                    }
                }

                Rectangle {
                    width: idSettingMainContentRect.width / 10 * 4.5
                    height: idSettingMainContentRect.height / 10 * 2

                    Image {
                        source: "media/SubBack.png"
                        anchors.fill:  parent
                    }

                    Row {
                        anchors.fill: parent
                        anchors.topMargin: 15
                        anchors.leftMargin: 20
                        Column {
                            spacing: 20
                            width: parent.width - parent.height
                            height: parent.height

                            Text {
                                text: "System"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 20
                                color: "white"
                            }

                            Text {
                                text: "Setup and calibrate displays. Configure audio\noutput. Setup remote controls. Set power\nsaving options. Enable debugging. Setup\nmaster lock"
                                font.family: "Helvetica"
                                font.bold: true
                                font.pointSize: 12
                                color: "gray"
                            }
                        }

                        Image {
                            width: parent.height
                            height: parent.height
                            source: "media/icon_big_system.png"
                        }
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

    states: [
        State {
            name: "settingmainview"
            PropertyChanges {target: idVideoView; opacity: 0 }
            PropertyChanges { target: idVideoView; visible: false }
            PropertyChanges { target: idHomeView; visible: true }
            PropertyChanges { target: idHomeIcon; visible: false }
            PropertyChanges { target: idHomeMenuRow; visible: true }
            PropertyChanges { target: idSubMenuRow; visible: false }

        },
        State {
            name: "settingappearanceview"
            PropertyChanges {target: idVideoView; opacity: 0 }
            PropertyChanges { target: idVideoView; visible: false }
            PropertyChanges { target: idHomeView; visible: true }
            PropertyChanges { target: idHomeIcon; visible: false }
            PropertyChanges { target: idHomeMenuRow; visible: true }
            PropertyChanges { target: idSubMenuRow; visible: false }

        }
            ]
}



