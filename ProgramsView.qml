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
        id: idProgramsListModal
        ListElement{
            iconPath: "media/DefaultProgram.png"
            content: "Program Add-ons"
            index: 0
        }        
        ListElement{
            iconPath: "media/DefaultAddSource.png"
            content: "Add Source"
            index: 1
        }
    }    

    ListView{
        id: idProgramsListView
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 100
        anchors.topMargin: 50
        focus: true
        highlight: Rectangle { color: "lightsteelblue"; radius: 4}
        highlightResizeDuration: 0

        height: 400
        width: parent.width - 200

        model: idProgramsListModal        
        delegate: idProgramsListDelegate
        visible: idMainWindow.viewType == "list"
    }

    GridView {
        id: idProgramsGridView
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.topMargin: 20
        visible: idMainWindow.viewType != "list"

        cellHeight: 256
        cellWidth: 256
        delegate: idProgramsIconDelegate
        model: idProgramsListModal

    }

    Component {
        id: idProgramsListDelegate
        Item {
            width: parent.width
            height: 60

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    idProgramsListView.currentIndex = index;
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
        id: idProgramsIconDelegate

        Item {
            width: idProgramsGridView.cellWidth
            height: idProgramsGridView.cellHeight
            Image {
                source: index === idProgramsGridView.currentIndex ? "media/SubBack2.png" : "media/SubBack.png"
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
                    idProgramsGridView.currentIndex = index;
                }
            }
        }
    }
}



