import QtQuick 2.2

Item {
    height: idMainWindow.height / 10 * 9
    width: idMainWindow.width
    property string tipTxt

    Column {
        Rectangle {
            id: idVideoContentRect
            height: parent.height / 9 * 8
            width: parent.width

            Image {
                source: "media/background/background.png"
                anchors.fill: parent
                opacity: 0.9
            }

            Image {
                height: 120
                width: 600

                source: "media/black-back.png"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 160

                Text {
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 20
                    anchors.topMargin: 10
                    text: tipTxt
                    font.family: "Helvetica"
                    font.pointSize: 14
                    color: "lightskyblue"
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

    ListModel{
        id: idAppearanceTitleModal
        ListElement{            
            content: "Skin"
            tip: "Category containing all Skin related settings."
            index: 0
        }
        ListElement{            
            content: "International"
            tip: "Category containing all locale/regional \nsettings."
            index: 1
        }
        ListElement{            
            content: "File lists"
            tip: "Category containing settings related to how file\n lists are displayed."
            index: 2
        }
        ListElement{
            content: "Screensaver"
            tip: "Category containing all screensaver settings."
            index: 3
        }
    }

    ListModel{
        id: idAppearanceContentModal
        ListElement{
            type: "textlistpopup"
            title: "Screen saver mode"
            tip: "Select the skin for the user interface.\n This will define the look and\nfeel of XBMC."
            index: 0
            content: "Black"
        }
        ListElement{
            type: "textlistadjust"
            title: "-Settings"
            tip: "Change specific skin settings. The available\noptions are dependent\non the skin used."
            index: 1
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "-Fonts"
            tip: "Choose the fonts displayed in the user interface. \nThe font sets are\nconfigured by your skin."
            index: 2
            content: "Arial based"
            attributes: [
                ListElement { txtlist: "Arial based" },
                ListElement { txtlist: "Skin default" }
            ]
        }
        ListElement{
            type: "textlistadjust"
            title: "Startup window"
            tip: "Select the media window that XBMC displays on startup."
            index: 3
            content: "Home window"

            attributes: [
                ListElement { txtlist: "Home window" },
                ListElement { txtlist: "Weather" },
                ListElement { txtlist: "Settings" },
                ListElement { txtlist: "File Manager" },
                ListElement { txtlist: "Videos" },
                ListElement { txtlist: "Music" },
                ListElement { txtlist: "Pictures" },
                ListElement { txtlist: "Programs" },
                ListElement { txtlist: "TV" }
            ]
        }
        ListElement{
            type: "textlistadjust"
            title: "Nevigation sounds"
            tip: "Select or disable the sound scheme \nused in the user interface."
            index: 4
            content: "Skin default"

            attributes: [
                ListElement { txtlist: "Skin default" },
                ListElement { txtlist: "Off" },
                ListElement { txtlist: "Bursting Bubbles" }
            ]
        }
        ListElement{
            type: "textlistonoff"
            title: "Show RSS news feeds"
            tip: "Turn this off to remove the scrolling RSS news ticker."
            index: 5

            content: ""
            onoff: "on"
        }
        ListElement{
            type: "titlepopup"
            title: "-Edit"
            tip: "Edit the RSS feeds."
            content: ""
            index: 6
        }
        ListElement{
            type: "titlepopup"
            title: "Reset above settings to default"
            tip: "Reset all the visible settings to \ntheir default values."
            content: ""
            index: 7
        }
    }

    Component {
        id: titleDelegate
        Item {
            width: parent.width
            height: 100

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    idAppearanceTitleListView.currentIndex = index;
                    tipTxt = tip
                }
            }
            Column {
                width: parent.width

                Text {
                    height: 60
                    text: content
                    font.family: "Helvetica"
                    font.bold: true
                    font.pointSize: 20
                    color: idAppearanceTitleListView.currentIndex === index ? "yellow" : "white"
                    horizontalAlignment : Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                }

                Image {
                    width: parent.width
                    height: 3
                    source: "media/background/background.png"
                }
            }
        }
    }

    Component {
        id: contentDelegate
        Item {
            width: idAppearanceContentListView.width
            height: 65
            property string onoffValue: onoff

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    idAppearanceContentListView.currentIndex = index;
                    tipTxt = tip
                }
            }

            Rectangle {
                color: idAppearanceContentListView.currentIndex == index ? "lightsteelblue" : "black"
                anchors.fill: parent
                radius: 4
                opacity: 0.5
            }

            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                height: 60
                text: title
                font.family: "Helvetica"
                font.pointSize: 16
                color: "white"
                horizontalAlignment : Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                anchors.right: parent.right
                anchors.top: parent.top
                height: 60
                text: content
                font.family: "Helvetica"
                font.pointSize: 16
                color: "white"
                horizontalAlignment : Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            Image {
                source: onoffValue == "on" ? "media/radiobutton-focus.png" : "media/radiobutton-nofocus.png"
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 10
                anchors.topMargin: 10
                anchors.bottomMargin: 10

                height: parent.height - 20
                visible: type == "textlistonoff" ? true : false

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if( onoffValue == "on" )
                        {
                            onoffValue = "off";
                        }
                        else
                        {
                            onoffValue = "on";
                        }
                    }
                }
            }
        }
    }

    Row {
        anchors.fill: parent
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 100
        anchors.topMargin: 50
        spacing: 10

        ListView {
            id: idAppearanceTitleListView
            height: parent.height
            width: parent.width / 4
            model: idAppearanceTitleModal
            delegate: titleDelegate
        }

        height: parent.height
        width: parent.height

        ListView {
            id: idAppearanceContentListView
            height: parent.height - 200
            width: parent.width / 4 * 3 - 10
            highlightResizeDuration: 0
            model: idAppearanceContentModal
            delegate: contentDelegate
        }
    }
}



