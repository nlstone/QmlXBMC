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
        id: idPicturesListModal
        ListElement{
            iconPath: "media/DefaultProgram.png"
            content: "Picture Add-ons"
            index: 0
        }
        ListElement{
            iconPath: "media/DefaultProgram.png"
            content: "Removable disk(D:)"
            index: 1
        }
        ListElement{
            iconPath: "media/DefaultAddSource.png"
            content: "Add Source"
            index: 2
        }
    }    

    ListView{
        id: idPicturesListView
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 100
        anchors.topMargin: 50
        focus: true
        highlight: Rectangle { color: "lightsteelblue"; radius: 4}
        highlightResizeDuration: 0

        height: 400
        width: parent.width - 200

        model: idPicturesListModal
        delegate: idPicturesListDelegate
        property string viewType: "VideoMainView"
        visible: idMainWindow.viewType == "list"

    }

    GridView {
        id: idPicturesGridView
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.topMargin: 20
        visible: idMainWindow.viewType != "list"

        cellHeight: 256
        cellWidth: 256
        delegate: idPicturesIconDelegate
        model: idPicturesListModal

    }

    Component {
        id: idPicturesListDelegate
        Item {
            width: parent.width
            height: 60

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    idPicturesListView.currentIndex = index;
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
        id: idPicturesIconDelegate

        Item {
            width: idPicturesGridView.cellWidth
            height: idPicturesGridView.cellHeight
            Image {
                source: index === idPicturesGridView.currentIndex ? "media/SubBack2.png" : "media/SubBack.png"
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
                    idPicturesGridView.currentIndex = index;
                }
            }
        }
    }
}



