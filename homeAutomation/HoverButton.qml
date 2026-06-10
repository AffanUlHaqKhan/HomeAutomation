import QtQuick

Item {

    id: root

    property color color_root: "grey"
    property color color_clicked: "green"
    property color color_hover: "pink"
    property color color_text: "black"
    property color color_text_hover: "white"

    property alias title: display
    property alias area: mousearea

    Rectangle {
        id: button_rectangle
        height: root.height
        width: root.width
        color: root.color_root
        clip: true

        Text {
            id: display
            text: ""
            anchors.centerIn: parent
            color: root.color_text
            font.bold: true
        }

        MouseArea {
            id: mousearea
            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                parent.color = root.color_hover
                display.color = root.color_text_hover
            }

            onExited: {
                parent.color = root.color_root
                display.color = root.color_text
            }

            onPressed: parent.color = root.color_clicked
            onReleased: parent.color = root.color_hover
        }
    }
}
