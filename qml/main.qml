

import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import MatsyaUI 1.0 as MatsyaUI
import Matsya.DebInstaller 1.0

MatsyaUI.Window {
    id: control
    width: 480
    height: 400
    minimumWidth: 480
    minimumHeight: 400
    maximumWidth: 480
    maximumHeight: 400
    title: qsTr("Package Installer")
    visible: true

    background.color: MatsyaUI.Theme.secondBackgroundColor

    headerItem: Label {
        text: control.title
        leftPadding: MatsyaUI.Units.largeSpacing
    }

    DragHandler {
        target: null
        acceptedDevices: PointerDevice.GenericPointer
        grabPermissions: TapHandler.CanTakeOverFromAnything
        onActiveChanged: if (active) { control.helper.startSystemMove(control) }
    }

    DropArea {
        id: _dropArea
        anchors.fill: parent

        onDropped: {
            if (drop.hasUrls)
                Installer.fileName = drop.urls[0]
        }
    }

    Component {
        id: _homePage

        HomePage { }
    }

    Component {
        id: _appPage

        AppPage { }
    }

    Component {
        id: _installPage

        InstallPage { }
    }

    StackView {
        id: _stackView
        anchors.fill: parent
        initialItem: _homePage
    }

    Connections {
        target: Installer

        function onValidChanged() {
            if (Installer.valid)
                _stackView.push(_appPage)
        }

        function onStatusChanged() {
            if (Installer.status == DebInstaller.Installing)
                _stackView.push(_installPage)
        }

//        function onRequestSwitchToInstallPage() {
//            _stackView.push(_installPage)
//        }
    }
}
