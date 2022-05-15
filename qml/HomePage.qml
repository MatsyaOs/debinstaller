

import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.2
import MatsyaUI 1.0 as MatsyaUI
import Matsya.DebInstaller 1.0

Item {
    FileDialog {
        id: fileDialog
        folder: shortcuts.home
        nameFilters: ["Deb files (*.deb)", "All files (*)"]
        onAccepted: {
            Installer.fileName = fileDialog.fileUrl.toString().replace("file://", "")
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: MatsyaUI.Units.largeSpacing * 2

        Item {
            Layout.fillHeight: true
        }

        Image {
            width: 96
            height: width
            sourceSize: Qt.size(width, height)
            source: "image://icontheme/gnome-mime-application-x-dmg"
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
        }

        Item {
            height: MatsyaUI.Units.largeSpacing
        }

        Label {
            text: qsTr("You can drag the app package here")
            Layout.alignment: Qt.AlignHCenter
        }

        Label {
            Layout.alignment: Qt.AlignCenter
            text: qsTr("Select file")
            color: MatsyaUI.Theme.highlightColor
            focus: true

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: fileDialog.open()
            }
        }

        Item {
            Layout.fillHeight: true
        }
    }
}
