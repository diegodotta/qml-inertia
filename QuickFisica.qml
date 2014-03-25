/*
**  Quick Phisics with Sequential Animation
**  quicking.wordpress.com
*/

import QtQuick 1.0

Rectangle {
    width: 720
    height: 480

    Image{
        source: "imgs/chateau-default.jpg"
        height: parent.height
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectCrop
    }

    Rectangle{
        id: container
        width: parent.width-50
        height: parent.height-50
        anchors.centerIn: parent
        radius: 10
        color: "#DDFFFFFF"

Image{
    id: rect
    source: "imgs/quicking_icon.png"

    Fisica {
         anchors.fill: parent
         drag.target: rect
         drag.axis: Drag.XandYAxis
         drag.minimumX: 0
         drag.maximumX: container.width - rect.width
         drag.minimumY: 0
         drag.maximumY: container.height - rect.height
     }
}
    }
}
