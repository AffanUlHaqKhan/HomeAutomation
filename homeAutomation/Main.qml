import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("App Display")

    id: root

    property color bgcolor: "#5A6263"
    property color buttoncolor: "green"
    property color hovercolor: "limegreen"
    property color clickcolor: "yellow"
    property var size: 100

    Rectangle {
        id: background
        color: root.buttoncolor
        width: 100
        height: parent.height

        Column {
            id: buttonsColumns
            anchors.fill: parent

            HoverButton {
                width: 100
                height: 50
                title.text: "Temperature"
                //@
                color_root: root.buttoncolor
                color_hover: root.hovercolor
                color_clicked: root.clickcolor
                area.onPressed: image.source = "/images/cat.jpg"
            }
            HoverButton {
                width: 100
                height: 50
                title.text: "Humidity"
                color_root: root.buttoncolor
                color_hover: root.hovercolor
                color_clicked: root.clickcolor
                area.onPressed: image.source = "qrc:/images/dog.jpg"
            }
            HoverButton {
                width: 100
                height: 50
                title.text: "Heating"
                color_root: root.buttoncolor
                color_hover: root.hovercolor
                color_clicked: root.clickcolor
                area.onPressed: image.source = "qrc:/images/fish.jpg"
            }
        }
    }

    Rectangle {
            id: rectangleImage
            color: root.bgcolor
            x: 100
            y: 0
            width: parent.width - x
            height: parent.height

            Image {
                id: image
                anchors.margins: 25
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/logo.png"
            }

        }

}
