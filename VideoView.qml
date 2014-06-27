import QtQuick 2.2

Item {
    height: idMainWindow.height / 10 * 9
    width: idMainWindow.width

    Column {
        Rectangle {
            id: idVideoContentRect
            height: parent.height / 9 * 8
            width: parent.width

            Image {
                source: "media/background/background.png"
                anchors.fill: parent
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

    ListModel{
        id: idVideoListModal
        ListElement{
            iconPath: "media/DefaultFolder.png"
            content: "Files"
            index: 0
        }
        ListElement{
            iconPath: "media/DefaultVideoPlaylists.png"
            content: "Playlists"
            index: 1
        }
        ListElement{
            iconPath: "media/DefaultProgram.png"
            content: "Video Add-ons"
            index: 2
        }
    }

    ListModel{
        id: idVideoFilesModal
        ListElement{
            iconPath: "media/DefaultFolderBack.png"
            content: ".."
            index: 0
        }
        ListElement{
            iconPath: "media/DefaultProgram.png"
            content: "Removable Disk(D:)"
            index: 1
        }
        ListElement{
            iconPath: "media/DefaultAddSource.png"
            content: "Add Videos.."
            index: 2
        }
    }

    ListModel{
        id: idVideoPlaylistsModal
        ListElement{
            iconPath: "media/DefaultFolderBack.png"
            content: ".."
            index: 0
        }
        ListElement{
            iconPath: "media/DefaultFolder.png"
            content: "Party Mode Playlist"
            index: 1
        }
        ListElement{
            iconPath: "media/DefaultFile.png"
            content: "New Smart Playlist..."
            index: 2
        }
    }

    ListModel{
        id: idVideoAddonsModal
        ListElement{
            iconPath: "media/DefaultFolderBack.png"
            content: ".."
            index: 0
        }
        ListElement{
            iconPath: "media/DefaultAddon.png"
            content: "Get More..."
            index: 1
        }
    }

    ListView{
        id: idVideoListView
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 100
        anchors.topMargin: 50

        highlight: Rectangle { color: "lightsteelblue"; radius: 4}
        highlightResizeDuration: 0

        height: 400
        width: parent.width - 200

        model: idVideoListModal
        visible: idMainWindow.viewType == "list"
        delegate: videoListDelegate
        property string viewType: "VideoMainView"
    }

    GridView {
        id: idVideoGridView
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.topMargin: 20
        visible: idMainWindow.viewType != "list"

        cellHeight: 256
        cellWidth: 256
        delegate: videoIconDelegate
        model: idVideoListModal
    }

    Component {
        id: videoListDelegate
        Item {
            width: parent.width
            height: 60

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    idVideoListView.currentIndex = index;
                }
                onClicked: {
                    if( idVideoListView.viewType == "VideoMainView" )
                    {
                        if( index == 0 )
                        {
                            idVideoListView.viewType = "VideoFilesView";
                            idVideoListView.model = idVideoFilesModal;
                        }
                        else if( index == 1 )
                        {
                            idVideoListView.viewType = "VideoPlaylistsView";
                            idVideoListView.model = idVideoPlaylistsModal;
                        }
                        else if( index == 2 )
                        {
                            idVideoListView.viewType = "VideoAddonsView";
                            idVideoListView.model = idVideoAddonsModal;
                        }
                    }
                    else if( idVideoListView.viewType == "VideoFilesView" ||
                             idVideoListView.viewType == "VideoPlaylistsView" ||
                             idVideoListView.viewType == "VideoAddonsView" )
                    {
                        if( index == 0 )
                        {
                            idVideoListView.viewType = "VideoMainView";
                            idVideoListView.model = idVideoListModal;
                        }
                    }
                }
            }

            BorderImage {
                source: "media/PlayerControls-Background.png"

                border.left: 15; border.top: 10
                border.right: 15; border.bottom: 10
                opacity: 0.4
                anchors.fill: parent
            }

            Row {
                spacing: 10
                Image {
                    source: iconPath
                    height: 60
                    width: 70
                }

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    font.family: "Helvetica"
                    font.bold: true
                    font.pointSize: 24
                    text: content
                    color: "white"
                }
            }
        }
    }

    Component {
        id: videoIconDelegate

        Item {
            width: idVideoGridView.cellWidth
            height: idVideoGridView.cellHeight
            Image {
                source: index === idVideoGridView.currentIndex ? "media/SubBack2.png" : "media/SubBack.png"
                Image {
                    source: iconPath
                    anchors.fill: parent
                    anchors.leftMargin: 20
                    anchors.rightMargin: 20
                    anchors.topMargin: 20
                    anchors.bottomMargin: 20
                }

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    font.family: "Helvetica"
                    font.bold: true
                    font.pointSize: 16
                    text: content
                    color: "white"
                }
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    idVideoGridView.currentIndex = index;
                }
                onClicked: {
                    if( idVideoListView.viewType == "VideoMainView" )
                    {
                        if( index == 0 )
                        {
                            idVideoListView.viewType = "VideoFilesView";
                            idVideoListView.model = idVideoFilesModal;
                            idVideoGridView.model = idVideoFilesModal;
                        }
                        else if( index == 1 )
                        {
                            idVideoListView.viewType = "VideoPlaylistsView";
                            idVideoListView.model = idVideoPlaylistsModal;
                            idVideoGridView.model = idVideoPlaylistsModal;
                        }
                        else if( index == 2 )
                        {
                            idVideoListView.viewType = "VideoAddonsView";
                            idVideoListView.model = idVideoAddonsModal;
                            idVideoGridView.model = idVideoAddonsModal;
                        }
                    }
                    else if( idVideoListView.viewType == "VideoFilesView" ||
                            idVideoListView.viewType == "VideoPlaylistsView" ||
                            idVideoListView.viewType == "VideoAddonsView" )
                    {
                        if( index == 0 )
                        {
                            idVideoListView.viewType = "VideoMainView";
                            idVideoListView.model = idVideoListModal;
                            idVideoGridView.model = idVideoListModal;
                        }
                    }
                }
            }
        }
    }
}



