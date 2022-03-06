import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick 2.15

Window {
    id: window
    width: 800
    height: 430
    maximumWidth: 800
    maximumHeight: 430

    visible: true
    title: "Float Text Movement Generator"

    ListModel {
        id: pixel_or_percentage
        ListElement {type: "%"}
        ListElement {type: "px"}
    }

    ListModel {
        id: ease
        ListElement {type: "Linear"}
        ListElement {type: "Sine"}
        ListElement {type: "Quad"}
        ListElement {type: "Cubic"}
        ListElement {type: "Quart"}
        ListElement {type: "Quint"}
        ListElement {type: "Expo"}
        ListElement {type: "Circ"}
        ListElement {type: "Back"}
        ListElement {type: "Elastic"}
        ListElement {type: "Bounce"}
    }

    ListModel {
        id: ease_type
        ListElement {type: "In"}
        ListElement {type: "Out"}
        ListElement {type: "InOut"}
    }

    ListModel {
        id: ease_type_none
        ListElement {type: ""}
    }

    Flow {
        id: flow1
        x: 0
        y: 0
        width: 800
        height: 430
        layoutDirection: Qt.LeftToRight
        flow: Flow.TopToBottom
        spacing: 15
        padding: 5
        z: 0






        Row {
            id: row
            x: 0
            width: 780
            height: 30
            spacing: 10
            z: 0

            Text {
                id: text_text
                height: 25
                text: qsTr("text")
                font.pixelSize: 20

            }

            TextField {
                id: float_text
                x: 0
                y: 0
                width: 730
                height: 25
                font.pixelSize: 20
                wrapMode: Text.NoWrap
                topPadding: 0
                placeholderText: "input your text here..."
                transformOrigin: Item.Center
                layer.enabled: false
                padding: 6
                bottomPadding: 0
                rightPadding: 0
                leftPadding: 3
                selectByMouse: true
                font.family: "Arial"
            }
        }








        Row {
            id: row8
            width: 785
            height: 265
            topPadding: -5


            Column {
                id: column1
                width: 470
                height: 270
                leftPadding: 0
                spacing: 10

                Row {
                    id: row1
                    width: 460
                    height: 30
                    spacing: 5

                    Text {
                        id: text_x
                        height: 25
                        text: qsTr("x")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: x0
                        width: 130
                        height: 25
                        visible: true
                        text: "0"
                        font.pixelSize: 20
                        placeholderText: "0"
                        clip: false
                        hoverEnabled: false
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        rightPadding: 0
                        bottomPadding: 0
                        z: 0
                        font.family: "Arial"
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 3
                        selectByMouse: true

                        property string previousText: qsTr(text)

                        Connections {
                            target: x0
                            onTextEdited: {
                                if(isNaN(Number(x0.text))) {
                                    x0.text = x0.previousText
                                }
                                else {
                                    x0.previousText = x0.text
                                }
                            }
                        }
                    }

                    ComboBox {
                        id: x0_measurement
                        width: 70
                        height: 30
                        font.pixelSize: 20
                        leftPadding: -10
                        font.hintingPreference: Font.PreferDefaultHinting
                        focusPolicy: Qt.NoFocus
                        bottomPadding: 0
                        topPadding: -5
                        font.bold: false
                        font.family: "Arial"
                        flat: false
                        clip: true
                        wheelEnabled: false
                        currentIndex: 0
                        displayText: currentText
                        model: pixel_or_percentage
                    }

                    Text {
                        id: text_x1
                        height: 25
                        text: qsTr("->")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }


                    TextField {
                        id: x1
                        width: 130
                        height: 25
                        text: "0"
                        font.pixelSize: 20
                        placeholderText: "0"
                        hoverEnabled: false
                        antialiasing: false
                        transformOrigin: Item.Center
                        activeFocusOnTab: false
                        rightPadding: 0
                        bottomPadding: 0
                        font.family: "Arial"
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 3
                        selectByMouse: true

                        property string previousText: qsTr(text)

                        Connections {
                            target: x1
                            onTextEdited: {
                                if(isNaN(Number(x1.text))) {
                                    x1.text = x1.previousText
                                }
                                else {
                                    x1.previousText = x1.text
                                }
                            }
                        }
                    }

                    ComboBox {
                        id: x1_measurement
                        width: 70
                        height: 30
                        font.pixelSize: 20
                        leftPadding: -10
                        font.family: "Arial"
                        topPadding: -5
                        displayText: currentText
                        wheelEnabled: false
                        model: pixel_or_percentage
                        clip: true
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        bottomPadding: 0
                        currentIndex: 0
                    }


                }

                Row {
                    id: row2
                    width: 460
                    height: 30
                    Text {
                        id: text_y
                        height: 25
                        text: qsTr("y")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: y0
                        width: 130
                        height: 25
                        visible: true
                        text: "0"
                        font.pixelSize: 20
                        placeholderText: "0"
                        rightPadding: 0
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        hoverEnabled: false
                        font.family: "Arial"
                        clip: false
                        bottomPadding: 0
                        font.kerning: true
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 3
                        selectByMouse: true

                        property string previousText: qsTr(text)

                        Connections {
                            target: y0
                            onTextEdited: {
                                if(isNaN(Number(y0.text))) {
                                    y0.text = y0.previousText
                                }
                                else {
                                    y0.previousText = y0.text
                                }
                            }
                        }
                    }

                    ComboBox {
                        id: y0_measurement
                        width: 70
                        height: 30
                        font.pixelSize: 20
                        leftPadding: -10
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        topPadding: -5
                        currentIndex: 0
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        model: pixel_or_percentage
                    }

                    Text {
                        id: text_x4
                        height: 25
                        text: qsTr("->")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: y1
                        width: 130
                        height: 25
                        text: "0"
                        font.pixelSize: 20
                        placeholderText: "0"
                        rightPadding: 0
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        hoverEnabled: false
                        font.family: "Arial"
                        bottomPadding: 0
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 3
                        selectByMouse: true

                        property string previousText: qsTr(text)

                        Connections {
                            target: y1
                            onTextEdited: {
                                if(isNaN(Number(y1.text))) {
                                    y1.text = y1.previousText
                                }
                                else {
                                    y1.previousText = y1.text
                                }
                            }
                        }
                    }

                    ComboBox {
                        id: y1_measurement
                        width: 70
                        height: 30
                        font.pixelSize: 20
                        leftPadding: -10
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        topPadding: -5
                        currentIndex: 0
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        model: pixel_or_percentage
                    }
                    spacing: 5
                }

                Row {
                    id: row3
                    width: 460
                    height: 30
                    Text {
                        id: text_color
                        height: 25
                        text: qsTr("color    #")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: color0
                        width: 120
                        height: 25
                        visible: true
                        text: "FFFFFFFF"
                        font.pixelSize: 20
                        placeholderText: "FFFFFFFF"
                        font.capitalization: Font.AllUppercase
                        rightPadding: 0
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        hoverEnabled: false
                        z: 0
                        font.family: "Arial"
                        clip: false
                        bottomPadding: 0
                        font.kerning: true
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 3
                        selectByMouse: true

                        validator: RegularExpressionValidator {
                            regularExpression: /[0-9a-fA-F]{8}/
                        }
                    }

                    Text {
                        id: text_x6
                        height: 25
                        text: qsTr("-> #")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: color1
                        width: 120
                        height: 25
                        text: "FFFFFFFF"
                        font.pixelSize: 20
                        font.capitalization: Font.AllUppercase
                        placeholderText: "FFFFFFFF"
                        rightPadding: -1
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        hoverEnabled: false
                        z: 0
                        font.family: "Arial"
                        bottomPadding: 0
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 3
                        selectByMouse: true

                        validator: RegularExpressionValidator {
                            regularExpression: /[0-9a-fA-F]{8}/
                        }
                    }
                    spacing: 5
                }

                Row {
                    id: row4
                    width: 460
                    height: 30
                    Text {
                        id: text_outline
                        height: 25
                        text: qsTr("outline #")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: outline0
                        width: 120
                        height: 25
                        visible: true
                        text: "FFFFFFFF"
                        font.pixelSize: 20
                        rightPadding: 0
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        font.capitalization: Font.AllUppercase
                        hoverEnabled: false
                        z: 0
                        font.family: "Arial"
                        clip: false
                        bottomPadding: 0
                        font.kerning: true
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        placeholderText: "FFFFFFFF"
                        leftPadding: 3
                        selectByMouse: true

                        validator: RegularExpressionValidator {
                            regularExpression: /[0-9a-fA-F]{8}/
                        }
                    }

                    Text {
                        id: text_x8
                        height: 25
                        text: qsTr("-> #")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: outline1
                        width: 120
                        height: 25
                        text: "FFFFFFFF"
                        font.pixelSize: 20
                        font.capitalization: Font.AllUppercase
                        rightPadding: -1
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        hoverEnabled: false
                        z: 0
                        font.family: "Arial"
                        bottomPadding: 0
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        placeholderText: "FFFFFFFF"
                        leftPadding: 3
                        selectByMouse: true

                        validator: RegularExpressionValidator {
                            regularExpression: /[0-9a-fA-F]{8}/
                        }
                    }
                    spacing: 5
                }

                Row {
                    id: row5
                    width: 460
                    height: 30
                    Text {
                        id: text_angle
                        height: 25
                        text: qsTr("angle")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    SpinBox {
                        id: angle0
                        width: 130
                        height: 25
                        visible: true
                        font.pixelSize: 20
                        stepSize: 1
                        rightPadding: 0
                        wheelEnabled: true
                        antialiasing: false
                        activeFocusOnTab: false
                        wrap: false
                        transformOrigin: Item.Center
                        z: 0
                        focusPolicy: Qt.NoFocus
                        font.family: "Arial"
                        bottomPadding: 0
                        font.kerning: true
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 0
                        editable: true
                        to: 9999
                        from: -9999
                    }


                    Text {
                        id: text_x10
                        height: 25
                        text: qsTr("°    ->")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }


                    SpinBox {
                        id: angle1
                        width: 130
                        height: 25
                        font.pixelSize: 20
                        rightPadding: -1
                        wheelEnabled: true
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        z: 0
                        font.family: "Arial"
                        bottomPadding: 0
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 0
                        editable: true
                        to: 9999
                        from: -9999
                    }

                    Text {
                        id: text_x12
                        height: 25
                        text: qsTr("°")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }




                    spacing: 5
                }

                Row {
                    id: row6
                    width: 460
                    height: 30
                    Text {
                        id: text_bar
                        height: 25
                        text: qsTr("bar   ")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    SpinBox {
                        id: bar
                        width: 130
                        height: 25
                        visible: true
                        font.pixelSize: 20
                        rightPadding: 0
                        wheelEnabled: true
                        antialiasing: false
                        activeFocusOnTab: false
                        wrap: false
                        transformOrigin: Item.Center
                        z: 0
                        focusPolicy: Qt.NoFocus
                        font.family: "Arial"
                        bottomPadding: 0
                        font.kerning: true
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 0
                        editable: true
                        to: 10000
                        from: 1
                    }

                    Text {
                        id: text_beat
                        height: 25
                        text: qsTr("  beat")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: beat
                        width: 130
                        height: 25
                        text: "1"
                        font.pixelSize: 20
                        placeholderText: "1"
                        rightPadding: -1
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        hoverEnabled: false
                        font.family: "Arial"
                        bottomPadding: 0
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 3
                        selectByMouse: true

                        property string previousText: qsTr(text)

                        Connections {
                            target: beat
                            onTextEdited: {
                                if(Number(beat.text) >= 1) {
                                    beat.previousText = beat.text
                                }
                                else {
                                    beat.text = beat.previousText
                                }
                            }
                        }
                    }
                    spacing: 5
                }

                Row {
                    id: row15
                    width: 460
                    height: 30
                    topPadding: -4
                    spacing: 5

                    CheckDelegate {
                        id: room1
                        x: 0
                        y: 0
                        width: 100
                        height: 30
                        text: qsTr("room1")
                        font.pixelSize: 15
                        checked: true
                        checkState: Qt.Checked
                        font.family: "Arial"

                        Connections {
                            target: room1
                            onCheckStateChanged: {
                                if (room1.checkState === Qt.Unchecked && room2.checkState === Qt.Unchecked && room3.checkState === Qt.Unchecked && room4.checkState === Qt.Unchecked) {
                                    room_top.checkState = Qt.Checked
                                }
                                else {
                                    room_top.checkState = Qt.Unchecked
                                }
                            }
                        }
                    }

                    CheckDelegate {
                        id: room2
                        x: 0
                        y: 0
                        width: 100
                        height: 30
                        text: qsTr("room2")
                        font.pixelSize: 15
                        checkState: Qt.Unchecked
                        font.family: "Arial"

                        Connections {
                            target: room2
                            onCheckStateChanged: {
                                if (room1.checkState === Qt.Unchecked && room2.checkState === Qt.Unchecked && room3.checkState === Qt.Unchecked && room4.checkState === Qt.Unchecked) {
                                    room_top.checkState = Qt.Checked
                                }
                                else {
                                    room_top.checkState = Qt.Unchecked
                                }
                            }
                        }
                    }

                    CheckDelegate {
                        id: room3
                        x: 0
                        y: 0
                        width: 100
                        height: 30
                        text: qsTr("room3")
                        font.pixelSize: 15
                        checkState: Qt.Unchecked
                        font.family: "Arial"

                        Connections {
                            target: room3
                            onCheckStateChanged: {
                                if (room1.checkState === Qt.Unchecked && room2.checkState === Qt.Unchecked && room3.checkState === Qt.Unchecked && room4.checkState === Qt.Unchecked) {
                                    room_top.checkState = Qt.Checked
                                }
                                else {
                                    room_top.checkState = Qt.Unchecked
                                }
                            }
                        }
                    }

                    CheckDelegate {
                        id: room4
                        x: 0
                        y: 0
                        width: 100
                        height: 30
                        text: qsTr("room4")
                        font.pixelSize: 15
                        checkState: Qt.Unchecked
                        font.family: "Arial"

                        Connections {
                            target: room4
                            onCheckStateChanged: {
                                if (room1.checkState === Qt.Unchecked && room2.checkState === Qt.Unchecked && room3.checkState === Qt.Unchecked && room4.checkState === Qt.Unchecked) {
                                    room_top.checkState = Qt.Checked
                                }
                                else {
                                    room_top.checkState = Qt.Unchecked
                                }
                            }
                        }
                    }

                    CheckDelegate {
                        id: room_top
                        x: 0
                        y: 0
                        width: 100
                        height: 30
                        text: qsTr("top")
                        font.pixelSize: 15
                        checkState: Qt.Unchecked
                        font.family: "Arial"

                        Connections {
                            target: room_top
                            onClicked: {
                                if(room_top.checkState === Qt.Checked) {
                                    room1.checkState = Qt.Unchecked
                                    room2.checkState = Qt.Unchecked
                                    room3.checkState = Qt.Unchecked
                                    room4.checkState = Qt.Unchecked
                                }
                                else {
                                    room1.checkState = Qt.Checked
                                }
                            }
                        }
                    }
                }
            }
            Column {
                id: column
                width: 315
                height: 270
                spacing: 10

                Row {
                    id: row9
                    width: 310
                    height: 30
                    spacing: 5

                    Text {
                        id: text_x2
                        height: 25
                        text: qsTr("ease")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    ComboBox {
                        id: x_ease_type
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        topPadding: -5
                        currentIndex: 0
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        model: ease_type_none
                    }

                    ComboBox {
                        id: x_ease
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        Connections {
                            target: x_ease
                            onActivated: {
                                if(index === 0) {
                                    x_ease_type.model = ease_type_none
                                }
                                else {
                                    x_ease_type.model = ease_type
                                }
                            }
                        }
                        topPadding: -5
                        currentIndex: 0
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        model: ease
                    }
                }

                Row {
                    id: row10
                    width: 310
                    height: 30
                    spacing: 5

                    Text {
                        id: text_x5
                        height: 25
                        text: qsTr("ease")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    ComboBox {
                        id: y_ease_type
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        topPadding: -5
                        currentIndex: 0
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        model: ease_type_none
                    }

                    ComboBox {
                        id: y_ease
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        Connections {
                            target: y_ease
                            onActivated: {
                                if(index === 0) {
                                    y_ease_type.model = ease_type_none
                                }
                                else {
                                    y_ease_type.model = ease_type
                                }
                            }
                        }
                        topPadding: -5
                        currentIndex: 0
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        model: ease
                    }
                }

                Row {
                    id: row11
                    width: 310
                    height: 30
                    spacing: 5

                    Text {
                        id: text_x7
                        height: 25
                        text: qsTr("ease")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    ComboBox {
                        id: color_ease_type
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        font.bold: false
                        focusPolicy: Qt.NoFocus
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        topPadding: -5
                        currentIndex: 0
                        flat: false
                        font.hintingPreference: Font.PreferDefaultHinting
                        model: ease_type_none
                    }

                    ComboBox {
                        id: color_ease
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        font.bold: false
                        focusPolicy: Qt.NoFocus
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        Connections {
                            target: color_ease
                            onActivated: {
                                if(index === 0) {
                                    color_ease_type.model = ease_type_none
                                }
                                else {
                                    color_ease_type.model = ease_type
                                }
                            }
                        }
                        topPadding: -5
                        currentIndex: 0
                        flat: false
                        font.hintingPreference: Font.PreferDefaultHinting
                        model: ease
                    }
                }

                Row {
                    id: row12
                    width: 310
                    height: 30
                    spacing: 5

                    Text {
                        id: text_x9
                        height: 25
                        text: qsTr("ease")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    ComboBox {
                        id: outline_ease_type
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        font.bold: false
                        focusPolicy: Qt.NoFocus
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        topPadding: -5
                        currentIndex: 0
                        flat: false
                        font.hintingPreference: Font.PreferDefaultHinting
                        model: ease_type_none
                    }

                    ComboBox {
                        id: outline_ease
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        font.bold: false
                        focusPolicy: Qt.NoFocus
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        Connections {
                            target: outline_ease
                            onActivated: {
                                if(index === 0) {
                                    outline_ease_type.model = ease_type_none
                                }
                                else {
                                    outline_ease_type.model = ease_type
                                }
                            }
                        }
                        topPadding: -5
                        currentIndex: 0
                        flat: false
                        font.hintingPreference: Font.PreferDefaultHinting
                        model: ease
                    }
                }

                Row {
                    id: row13
                    width: 310
                    height: 30
                    spacing: 5

                    Text {
                        id: text_x11
                        height: 25
                        text: qsTr("ease")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    ComboBox {
                        id: angle_ease_type
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        topPadding: -5
                        currentIndex: 0
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        model: ease_type_none
                    }

                    ComboBox {
                        id: angle_ease
                        width: 120
                        height: 30
                        font.pixelSize: 20
                        focusPolicy: Qt.NoFocus
                        font.bold: false
                        wheelEnabled: false
                        font.family: "Arial"
                        clip: true
                        bottomPadding: 0
                        displayText: currentText
                        Connections {
                            target: angle_ease
                            onActivated: {
                                if(index === 0) {
                                    angle_ease_type.model = ease_type_none
                                }
                                else {
                                    angle_ease_type.model = ease_type
                                }
                            }
                        }
                        topPadding: -5
                        currentIndex: 0
                        font.hintingPreference: Font.PreferDefaultHinting
                        flat: false
                        model: ease
                    }
                }

                Row {
                    id: row14
                    width: 310
                    height: 30
                    spacing: 20

                    Text {
                        id: text_duration
                        height: 25
                        text: qsTr("duration")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }

                    TextField {
                        id: duration
                        width: 130
                        height: 25
                        text: "1"
                        font.pixelSize: 20
                        placeholderText: "1"
                        rightPadding: -1
                        antialiasing: false
                        activeFocusOnTab: false
                        transformOrigin: Item.Center
                        hoverEnabled: false
                        font.family: "Arial"
                        bottomPadding: 0
                        topPadding: 0
                        layer.enabled: false
                        padding: 0
                        leftPadding: 3
                        selectByMouse: true

                        property string previousText: qsTr(text)

                        Connections {
                            target: duration
                            onTextEdited: {
                                if(Number(duration.text) > 0) {
                                    duration.previousText = duration.text
                                }
                                else {
                                    duration.text = duration.previousText
                                }
                            }
                        }
                    }

                    Text {
                        id: text_beats
                        height: 25
                        text: qsTr("beats")
                        font.pixelSize: 20
                        font.family: "Arial"
                    }
                }

                Row {
                    id: row16
                    width: 310
                    height: 30
                    Text {
                        id: text_duration1
                        height: 25
                        text: qsTr("text size")
                        anchors.right: parent.right
                        font.pixelSize: 20
                        anchors.rightMargin: 170
                        font.family: "Arial"
                    }

                    SpinBox {
                        id: float_text_size
                        width: 130
                        height: 25
                        visible: true
                        anchors.right: parent.right
                        font.pixelSize: 20
                        value: 8
                        anchors.rightMargin: 20
                        bottomPadding: 0
                        rightPadding: 0
                        z: 0
                        transformOrigin: Item.Center
                        font.family: "Arial"
                        padding: 0
                        antialiasing: false
                        editable: true
                        activeFocusOnTab: false
                        topPadding: 0
                        layer.enabled: false
                        leftPadding: 0
                        wheelEnabled: true
                        font.kerning: true
                        focusPolicy: Qt.NoFocus
                        to: 10000
                        from: 1
                    }
                    spacing: 20
                }
            }
        }

        Row {
            id: row7
            width: 780
            height: 30
            Text {
                id: text_text1
                height: 25
                text: qsTr("output file name")
                font.pixelSize: 20
                font.family: "Arial"
            }

            TextField {
                id: output_file
                x: 0
                y: 0
                width: 625
                height: 25
                text: "output.json"
                font.pixelSize: 20
                wrapMode: Text.NoWrap
                rightPadding: 0
                antialiasing: false
                activeFocusOnTab: false
                transformOrigin: Item.Center
                z: 0
                font.family: "Arial"
                bottomPadding: 0
                topPadding: 0
                selectByMouse: true
                layer.enabled: false
                padding: 6
                placeholderText: ""
                leftPadding: 3
            }
            z: 0
            spacing: 10
        }

        Button {
            id: file_export
            x: 0
            y: 0
            width: 100
            height: 40
            text: qsTr("export")
            font.pixelSize: 20
            rightPadding: 0
            leftPadding: 0
            padding: 0
            font.family: "Arial"

            Connections {
                target: file_export
                onClicked: {
                    pyc.export(float_text.text, x0.text, x0_measurement.currentText, x1.text, x1_measurement.currentText, x_ease_type.currentText + x_ease.currentText, y0.text, y0_measurement.currentText, y1.text, y1_measurement.currentText, y_ease_type.currentText + y_ease.currentText, color0.text, color1.text, color_ease_type.currentText + color_ease.currentText, outline0.text, outline1.text, outline_ease_type.currentText + outline_ease.currentText, angle0.value, angle1.value, angle_ease_type.currentText + angle_ease.currentText, bar.value, beat.text, duration.text, room1.checked, room2.checked, room3.checked, room4.checked, room_top.checked, float_text_size.value, output_file.text)
                }
            }
        }

    }

}
