import QtQuick 2.2

Item {
    height: idMainWindow.height / 10 * 9
    width: idMainWindow.width
    property string tipTxt
    id: idSettingContentView

    Column {
        Rectangle {
            id: idSettingContentRect
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
        id: idVideoTitleModal
        ListElement{
            content: "Library"
            tip: ""
            index: 0
        }
        ListElement{
            content: "Playback"
            tip: ""
            index: 1
        }
        ListElement{
            content: "File lists"
            tip: ""
            index: 2
        }
        ListElement{
            content: "Subtitles"
            tip: ""
            index: 3
        }
        ListElement{
            content: "DVDs"
            tip: ""
            index: 4
        }
    }

    ListModel{
        id: idMusicTitleModal
        ListElement{
            content: "Library"
            tip: ""
            index: 0
        }
        ListElement{
            content: "Playback"
            tip: ""
            index: 1
        }
        ListElement{
            content: "File lists"
            tip: ""
            index: 2
        }
        ListElement{
            content: "Song submisson"
            tip: ""
            index: 3
        }
        ListElement{
            content: "Audio CDs"
            tip: ""
            index: 4
        }
        ListElement{
            content: "Karaoke"
            tip: ""
            index: 5
        }
    }

    ListModel{
        id: idPicturesTitleModal
        ListElement{
            content: "File lists"
            tip: ""
            index: 0
        }
        ListElement{
            content: "Slideshow"
            tip: ""
            index: 1
        }
    }

    ListModel{
        id: idWeatherTitleModal
        ListElement{
            content: "General"
            tip: ""
            index: 0
        }
    }

    ListModel{
        id: idServicesTitleModal
        ListElement{
            content: "General"
            tip: ""
            index: 0
        }
        ListElement{
            content: "UPnP"
            tip: ""
            index: 1
        }
        ListElement{
            content: "Webserver"
            tip: ""
            index: 2
        }
        ListElement{
            content: "Remote control"
            tip: ""
            index: 3
        }
        ListElement{
            content: "Zeroconf"
            tip: ""
            index: 4
        }
        ListElement{
            content: "AirPlay"
            tip: ""
            index: 5
        }
    }


    ListModel{
        id: idSkinContentModal
        ListElement{
            type: "textlistpopup"
            title: "Screen saver mode"
            tip: "Select the skin for the user interface.\n This will define the look and\nfeel of XBMC."
            onoff: "on"
            index: 0
            content: "Black"
        }
        ListElement{
            type: "textlistadjust"
            title: "-Settings"
            tip: "Change specific skin settings. The available\noptions are dependent\non the skin used."
            onoff: "on"
            index: 1
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "-Fonts"
            tip: "Choose the fonts displayed in the user interface. \nThe font sets are\nconfigured by your skin."
            onoff: "on"
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
            onoff: "on"
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
            onoff: "on"
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
            onoff: "on"
            index: 5

            content: ""            
        }
        ListElement{
            type: "titlepopup"
            title: "-Edit"
            tip: "Edit the RSS feeds."
            onoff: "on"
            content: ""
            index: 6
        }
        ListElement{
            type: "titlepopup"
            title: "Reset above settings to default"
            tip: "Reset all the visible settings to \ntheir default values."
            onoff: "on"
            content: ""
            index: 7
        }
    }

    ListModel{
        id: idInternationalContentModal
        ListElement{
            type: "textlistadjust"
            title: "Language"
            tip: ""
            onoff: "on"
            index: 0
            content: "English"
        }
        ListElement{
            type: "textlistadjust"
            title: "Region"
            onoff: "on"
            tip: ""
            index: 1
            content: "USA(12h)"
        }
        ListElement{
            type: "textlistadjust"
            title: "Character set"
            tip: ""
            onoff: "on"
            index: 2
            content: "Default"
        }
        ListElement{
            type: "textlistadjust"
            title: "Preferred audio language"
            tip: ""
            onoff: "on"
            index: 3
            content: "Original stream's language"
        }
        ListElement{
            type: "textlistadjust"
            title: "Preferred audio language"
            tip: ""
            onoff: "on"
            index: 4
            content: "Original stream's language"
        }
    }

    ListModel{
        id: idAppearanceFileListContentModal
        ListElement{
            type: "textlistonoff"
            title: "Show parent folder items"
            tip: ""
            onoff: "on"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Show file extensions"
            tip: ""
            onoff: "on"
            index: 1
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "ignore articles when sorting (e.g. 'the')"
            tip: ""
            onoff: "on"
            index: 2
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Allow file renaming and deletion"
            tip: ""
            onoff: "on"
            index: 3
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Show 'add source' buttons in file lists"
            tip: ""
            onoff: "on"
            index: 4
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Show hidden files and directions"
            tip: ""
            onoff: "on"
            index: 5
            content: ""
        }
    }

    ListModel{
        id: idScreensaverContentModal
        ListElement{
            type: "textlistpopup"
            title: "Screen saver mode"
            tip: ""
            onoff: "on"
            index: 0
            content: "Dim"
        }
        ListElement{
            type: "titlepopup"
            title: "-Settings"
            tip: ""
            onoff: "on"
            index: 1
            content: ""
        }
        ListElement{
            type: "titlepopup"
            title: "-Preview"
            tip: ""
            onoff: "on"
            index: 2
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "Screen saver time"
            tip: ""
            onoff: "on"
            index: 3
            content: "3 min"
        }
        ListElement{
            type: "textlistonoff"
            title: "User visulization if playing audio"
            tip: ""
            onoff: "on"
            index: 4
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Use dim if paused during video playback"
            tip: ""
            onoff: "on"
            index: 5
            content: ""
        }
    }

    ListModel{
        id: idVideoLibraryContentModal
        ListElement{
            type: "textlistonoff"
            title: "Show plot for unwatched items"
            tip: ""
            onoff: "on"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Download actor thumbnails when adding to library"
            tip: ""
            onoff: "on"
            index: 1
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "Flatten TV shows"
            tip: ""
            onoff: "on"
            index: 2
            content: "If only one season"
        }
        ListElement{
            type: "textlistonoff"
            title: "Group movies in sets"
            tip: ""
            onoff: "off"
            index: 3
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Update library on startup"
            tip: ""
            onoff: "off"
            index: 4
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Hide progress of library updates"
            tip: ""
            onoff: "off"
            index: 5
            content: ""
        }
        ListElement{
            type: "titlepopup"
            title: "Clean library..."
            tip: ""
            onoff: "off"
            index: 6
            content: ""
        }
        ListElement{
            type: "titlepopup"
            title: "Export video library"
            tip: ""
            onoff: "off"
            index: 7
            content: ""
        }
        ListElement{
            type: "titlepopup"
            title: "Import video library"
            tip: ""
            onoff: "off"
            index: 8
            content: ""
        }
    }

    ListModel{
        id: idVideoPlaybackContentModal
        ListElement{
            type: "textlistonoff"
            title: "Play the next video automatically"
            tip: ""
            onoff: "on"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "Render method"
            tip: ""
            onoff: "on"
            index: 1
            content: "Auto detect"
        }
        ListElement{
            type: "textlistonoff"
            title: "Allow hardware acceleration(DXVA2)"
            tip: ""
            onoff: "on"
            index: 2
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "Adjust display refresh rate to match video"
            tip: ""
            onoff: "off"
            index: 3
            content: "Off"
        }
        ListElement{
            type: "textlistadjust"
            title: "Pause during refresh rate change"
            tip: ""
            onoff: "off"
            index: 4
            content: "Off"
        }
        ListElement{
            type: "textlistonoff"
            title: "Sync playback to display"
            tip: ""
            onoff: "off"
            index: 5
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "A/V sync method"
            tip: ""
            onoff: "off"
            index: 6
            content: "Video clock(Resample audio)"
        }
        ListElement{
            type: "textlistadjust"
            title: "Allowed error in aspect ratio to minimize black bars"
            tip: ""
            onoff: "off"
            index: 7
            content: "None"
        }
        ListElement{
            type: "textlistonoff"
            title: "Activate Teletext"
            tip: ""
            onoff: "on"
            index: 8
            content: ""
        }
    }

    ListModel{
        id: idVideoFilelistsContentModal
        ListElement{
            type: "textlistadjust"
            title: "Default select action"
            tip: ""
            onoff: "on"
            index: 0
            content: "Play"
        }
        ListElement{
            type: "textlistonoff"
            title: "Extract trumbnails and video information"
            tip: ""
            onoff: "on"
            index: 1
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Replace file names with library titles"
            tip: ""
            onoff: "on"
            index: 2
            content: ""
        }
    }

    ListModel{
        id: idVideoSubtitlesContentModal
        ListElement{
            type: "textlistadjust"
            title: "Font to use for text subtitles"
            tip: ""
            onoff: "on"
            index: 0
            content: "arial.ttf"
        }
        ListElement{
            type: "textlistadjust"
            title: "-Size"
            tip: ""
            onoff: "on"
            index: 1
            content: "28"
        }
        ListElement{
            type: "textlistaddjust"
            title: "-Style"
            tip: ""
            onoff: "on"
            index: 2
            content: "Bold"
        }
        ListElement{
            type: "textlistadjust"
            title: "-Colour"
            tip: ""
            onoff: "off"
            index: 3
            content: "White"
        }
        ListElement{
            type: "textlistadjust"
            title: "-Character set"
            tip: ""
            onoff: "off"
            index: 4
            content: "Default"
        }
        ListElement{
            type: "textlistonoff"
            title: "Override ASS/SSA subtitles fonts"
            tip: ""
            onoff: "off"
            index: 5
            content: ""
        }
        ListElement{
            type: "titlepopup"
            title: "Subtitle folder"
            tip: ""
            onoff: "off"
            index: 6
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "Subtitle location"
            tip: ""
            onoff: "off"
            index: 7
            content: "Fixed"
        }
    }

    ListModel{
        id: idVideoDVDsContentModal
        ListElement{
            type: "textlistonoff"
            title: "Play DVDs automatically"
            tip: ""
            onoff: "off"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "Forced DVD player region"
            tip: ""
            onoff: "off"
            index: 1
            content: "off"
        }
        ListElement{
            type: "textlistonoff"
            title: "Attempt to skip introduction before DVD menu"
            tip: ""
            onoff: "off"
            index: 2
            content: ""
        }
    }

    ListModel{
        id: idMusicLibraryContentModal
        ListElement{
            type: "textlistonoff"
            title: "Include artists who appear only on compilations"
            tip: ""
            onoff: "on"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Download additional information during udpates"
            tip: ""
            onoff: "off"
            index: 1
            content: ""
        }
        ListElement{
            type: "textlistpopup"
            title: "Default service for album information"
            tip: ""
            onoff: "on"
            index: 2
            content: "Univeral Album Scraper"
        }
        ListElement{
            type: "textlistpopup"
            title: "Default service for artist information"
            tip: ""
            onoff: "on"
            index: 3
            content: "Univeral Artist Scraper"
        }
        ListElement{
            type: "textlistonoff"
            title: "Update library on startup"
            tip: ""
            onoff: "off"
            index: 4
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Hide progress of library updates"
            tip: ""
            onoff: "off"
            index: 5
            content: ""
        }
        ListElement{
            type: "titlepopup"
            title: "Clean library..."
            tip: ""
            onoff: "on"
            index: 6
            content: ""
        }
        ListElement{
            type: "titlepopup"
            title: "Export music library"
            tip: ""
            onoff: "on"
            index: 7
            content: ""
        }
        ListElement{
            type: "titlepopup"
            title: "Import music library"
            tip: ""
            onoff: "on"
            index: 8
            content: ""
        }
    }

    ListModel{
        id: idMusicPlaybackContentModal
        ListElement{
            type: "textlistonoff"
            title: "Play the next song automatically"
            tip: ""
            onoff: "on"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Queue songs on selection"
            tip: ""
            onoff: "off"
            index: 1
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "Replaygain volumn adjustments"
            tip: ""
            onoff: "on"
            index: 2
            content: "Use album levels"
        }
        ListElement{
            type: "textlistadjust"
            title: "PreAmp Level - Replay gained files"
            tip: ""
            onoff: "on"
            index: 3
            content: "89.0 dB"
        }
        ListElement{
            type: "textlistadjust"
            title: "PreAmp Level - Non replay gained files"
            tip: ""
            onoff: "off"
            index: 4
            content: "89.0 dB"
        }
        ListElement{
            type: "textlistonoff"
            title: "Avoid clipping on replay gained files"
            tip: ""
            onoff: "off"
            index: 5
            content: ""
        }
        ListElement{
            type: "textlistadjust"
            title: "Crossfade between songs"
            tip: ""
            onoff: "off"
            index: 6
            content: "Off"
        }
        ListElement{
            type: "textlistonoff"
            title: "Crossfade between songs on the same album"
            tip: ""
            onoff: "off"
            index: 7
            content: ""
        }
        ListElement{
            type: "textlistpopup"
            title: "Visualization"
            tip: ""
            onoff: "on"
            index: 8
            content: "MilkDrop"
        }
    }

    ListModel{
        id: idMusicFilelistsContentModal
        ListElement{
            type: "textlistonoff"
            title: "Enable tag reading"
            tip: ""
            onoff: "off"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistpopup"
            title: "Track naming template"
            tip: ""
            onoff: "off"
            index: 1
            content: "[%N.]%A-%T"
        }
        ListElement{
            type: "textlistpopup"
            title: "Track naming template - right"
            tip: ""
            onoff: "off"
            index: 2
            content: "%D"
        }
        ListElement{
            type: "textlistonoff"
            title: "Search for thumbnails on remote shares"
            tip: ""
            onoff: "on"
            index: 3
            content: ""
        }
    }

    ListModel{
        id: idMusicSongsubmissionContentModal
        ListElement{
            type: "textlistonoff"
            title: "Submit songs to Last.fm"
            tip: ""
            onoff: "off"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Submit songs to Libre.fm"
            tip: ""
            onoff: "off"
            index: 1
            content: ""
        }
    }

    ListModel{
        id: idPicturesFilelistsContentModal
        ListElement{
            type: "textlistonoff"
            title: "Show EXIF picture information"
            tip: ""
            onoff: "on"
            index: 0
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Automatically generate thumbnails"
            tip: ""
            onoff: "on"
            index: 1
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Rotate pictures using EXIF information"
            tip: ""
            onoff: "on"
            index: 2
            content: ""
        }
        ListElement{
            type: "textlistonoff"
            title: "Show video files in listings"
            tip: ""
            onoff: "on"
            index: 3
            content: ""
        }
    }

    ListModel{
        id: idPicturesSlideshowContentModal
        ListElement{
            type: "textlistadjust"
            title: "Amount of time to display each image"
            tip: ""
            onoff: "on"
            index: 0
            content: "5 sec"
        }
        ListElement{
            type: "textlistonoff"
            title: "Use pan and zoom effects"
            tip: ""
            onoff: "on"
            index: 1
            content: ""
        }
    }

    ListModel{
        id: idWeatherGeneralContentModal
        ListElement{
            type: "textlistpopup"
            title: "Service for weather information"
            tip: ""
            onoff: "on"
            index: 0
            content: "Weather Underground"
        }
        ListElement{
            type: "titlepopup"
            title: "-Settings"
            tip: ""
            onoff: "on"
            index: 1
            content: ""
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
                    idTitleListView.currentIndex = index;
                    tipTxt = tip;
                    if( idSettingContentView.state == "appearanceview" )
                    {
                        if( index == 0 )
                        {
                            idContentListView.model = idSkinContentModal;
                        }
                        else if( index == 1 )
                        {
                            idContentListView.model = idInternationalContentModal;
                        }
                        else if( index == 2 )
                        {
                            idContentListView.model = idAppearanceFileListContentModal;
                        }
                        else if( index == 3 )
                        {
                            idContentListView.model = idScreensaverContentModal;
                        }
                    }
                    else if( idSettingContentView.state == "videoview" )
                    {
                        if( index == 0 )
                        {
                            idContentListView.model = idVideoLibraryContentModal;
                        }
                        else if( index == 1 )
                        {
                            idContentListView.model = idVideoPlaybackContentModal;
                        }
                        else if( index == 2 )
                        {
                            idContentListView.model = idVideoFilelistsContentModal;
                        }
                        else if( index == 3 )
                        {
                            idContentListView.model = idVideoSubtitlesContentModal;
                        }
                        else if( index == 4 )
                        {
                            idContentListView.model = idVideoDVDsContentModal;
                        }
                    }
                    else if( idSettingContentView.state == "musicview" )
                    {
                        if( index == 0 )
                        {
                            idContentListView.model = idMusicLibraryContentModal;
                        }
                        else if( index == 1 )
                        {
                            idContentListView.model = idMusicPlaybackContentModal;
                        }
                        else if( index == 2 )
                        {
                            idContentListView.model = idMusicFilelistsContentModal;
                        }
                        else if( index == 3 )
                        {
                            idContentListView.model = idMusicSongsubmissionContentModal;
                        }
                    }
                    else if( idSettingContentView.state == "picturesview" )
                    {
                        if( index == 0 )
                        {
                            idContentListView.model = idPicturesFilelistsContentModal;
                        }
                        else if( index == 1 )
                        {
                            idContentListView.model = idPicturesSlideshowContentModal;
                        }
                    }
                    else if( idSettingContentView.state == "weatherview" )
                    {
                        if( index == 0 )
                        {
                            idContentListView.model = idWeatherGeneralContentModal;
                        }
                    }
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
                    color: idTitleListView.currentIndex === index ? "yellow" : "white"
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
            width: idContentListView.width
            height: 65
            property string onoffValue: onoff

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    idContentListView.currentIndex = index;
                    tipTxt = tip
                }
            }

            Rectangle {
                color: idContentListView.currentIndex == index ? "lightsteelblue" : "black"
                anchors.fill: parent
                radius: 8
                opacity: 0.5                
            }

            Text {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 10
                height: 60
                text: title
                font.family: "Helvetica"
                font.pointSize: 16
                color: "white"
                horizontalAlignment : Text.AlignRight
                verticalAlignment: Text.AlignVCenter
            }

            // OnOff image
            Image {                
                source: onoffValue == "on" ? "media/radiobutton-focus.png" : "media/radiobutton-nofocus.png"
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 10
                anchors.topMargin: 10
                anchors.bottomMargin: 10

                height: parent.height - 20
                width: 80
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

            // Adjust image
            Row{
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 10
                anchors.topMargin: 10
                anchors.bottomMargin: 10

                height: parent.height - 20
                spacing: 10

                Text {
                    text: content
                    font.family: "Helvetica"
                    font.pointSize: 16
                    color: "white"
                    anchors.top: parent.top
                    anchors.topMargin: 10
                }

                Row{
                    height: parent.height
                    width: 80
                    visible: type == "textlistadjust" ? true : false
                    Image{
                        source: "media/Select_Down.png"
                        width: 40
                        height: parent.height

                    }
                    Image{
                        source: "media/Select_Up.png"
                        width: 40
                        height: parent.height
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
        anchors.topMargin: 20
        spacing: 10
        id: videoRow

        ListView {
            id: idTitleListView
            height: parent.height
            width: parent.width / 4
            model: idAppearanceTitleModal
            delegate: titleDelegate
        }

        height: parent.height
        width: parent.height

        ListView {
            id: idContentListView
            height: parent.height - 200
            width: parent.width / 4 * 3 - 10
            spacing: 1
            model: idSkinContentModal
            delegate: contentDelegate
        }
    }

    Image {
        id: idBackMenu
        source: "media/IconBack.png"
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
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
                    showSettingView.running = true;
                    idMainWindow.state = "statesettingview";
                }
            }
        }
    }

    states: [
        State {
            name: "appearanceview"
            PropertyChanges { target: idTitleListView; model: idAppearanceTitleModal }
            PropertyChanges { target: idContentListView; model: idSkinContentModal }
        },
        State {
            name: "videoview"
            PropertyChanges { target: idTitleListView; model: idVideoTitleModal }
            PropertyChanges { target: idContentListView; model: idVideoLibraryContentModal }
        },
        State {
            name: "musicview"
            PropertyChanges { target: idTitleListView; model: idMusicTitleModal }
            PropertyChanges { target: idContentListView; model: idMusicLibraryContentModal }
        },
        State {
            name: "picturesview"
            PropertyChanges { target: idTitleListView; model: idPicturesTitleModal }
            PropertyChanges { target: idContentListView; model: idPicturesFilelistsContentModal }
        },
        State {
            name: "weatherview"
            PropertyChanges { target: idTitleListView; model: idWeatherTitleModal }
            PropertyChanges { target: idContentListView; model: idWeatherGeneralContentModal }
        }
    ]
}
