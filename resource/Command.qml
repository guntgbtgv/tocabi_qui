import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 1024
    height: 600


    Frame {
        id: frame1
        width: 620
        height: 400
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 8
        anchors.topMargin: 8

        Row {
            id: mover
            spacing: 240
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 5

            Text {
                text: qsTr("Arm mover")
                font.pixelSize: 12
            }
            Text {
                text: qsTr("COM mover         ")
                font.pixelSize: 12
            }

        }


        Row {

            id: arm
            spacing: 10
            anchors.left: mover.left
            anchors.top: mover.bottom
            anchors.topMargin: 10



            Column{
                spacing: 10
                id: cl3



                Text {
                    id:larm
                    text: qsTr("Left Arm")
                    font.pixelSize: 12

                }

                Text {
                    text: qsTr("x")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("y")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("z")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("roll")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("pitch")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("yaw")
                    font.pixelSize: 12
                }
            }

            Column{
                spacing: 10
                anchors.bottom: cl3.bottom


                TextField {
                    id: l_arm_x
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "l_arm_x"
                }
                TextField {
                    id: l_arm_y
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "l_arm_y"

                }

                TextField {
                    id:l_arm_z

                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "l_arm_z"

                }
                TextField {
                    id:l_arm_roll

                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "l_arm_roll"

                }
                TextField {
                    id:l_arm_pitch

                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "l_arm_pitch"

                }
                TextField {
                    id:l_arm_yaw

                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "l_arm_yaw"

                }


            }


            Column{
                spacing: 10
                id: cl4

                Text {
                    text: qsTr("x")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("y")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("z")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("roll")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("pitch")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("yaw")
                    font.pixelSize: 12
                }


            }

            Column{
                spacing: 10
                anchors.bottom: cl4.bottom



                TextField {
                    id: r_arm_x
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "r_arm_x"
                }
                TextField {
                    id: r_arm_y
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "r_arm_y"

                }

                TextField {
                    id:r_arm_z

                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "r_arm_z"

                }
                TextField {
                    id:r_arm_roll

                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    text: qsTr("r_arm_roll")

                }
                TextField {
                    id:r_arm_pitch

                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "r_arm_pitch"

                }
                TextField {
                    id:r_arm_yaw

                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "r_arm_yaw"

                }

            }
        }


        Row {
            id: com
            spacing: 10
            anchors.right: mover.right
            anchors.bottom: arm.bottom
            anchors.top: mover.bottom



            Column{
                id:cl
                spacing: 10
                anchors.bottom: parent.bottom


                Text {
                    text: qsTr("COM pos")
                    objectName: "COM_pos"
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("Height")
                    objectName: "Height"
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("pelv pitch")
                    objectName: "pelv_pitch"
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("roll")
                    objectName: "roll"
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("pitch")
                    objectName: "pitch"
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("yaw")
                    objectName: "yaw"
                    font.pixelSize: 12
                }
            }

            Column{
                spacing: 10
                anchors.bottom: parent.bottom

                TextField {
                    height: 15
                    width: 40

                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }

                TextField {
                    height: 15
                    width: 40

                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }

                TextField {
                    height: 15
                    width: 40

                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    height: 15
                    width: 40

                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    height: 15
                    width: 40

                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    height: 15
                    width: 40

                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }
            }
        }

        Row {
            id:checkBoxs
            spacing: 25
            anchors.top: arm.bottom
            anchors.topMargin: 20
            anchors.left: arm.left

            CheckBox {
                height: 20
                text: qsTr("l foot")
                font.pixelSize: 12
                padding: 0


            }
            CheckBox {
                height: 20
                text: qsTr("r foot")
                font.pixelSize: 12
                padding: 0

            }
            CheckBox {
                height: 20
                text: qsTr("l hand")
                font.pixelSize: 12
                padding: 0

            }
            CheckBox {
                height: 20
                text: qsTr("r hand")
                font.pixelSize: 12
                padding: 0

            }
        }

        Column {
            id: custaskgain
            anchors.top: parent.top
            anchors.right: parent.right

            CheckBox {
                id: checkBox
                text: qsTr("Custom Task gain")
                font.pixelSize: 12
                padding: 0
            }

            Row {

                spacing: 10


                Column {
                    spacing: 10
                    id: cl5


                    Text {
                        text: qsTr("pos p")
                        font.pixelSize: 12
                    }
                    Text {
                        text: qsTr("pos d")
                        font.pixelSize: 12
                    }
                    Text {
                        text: qsTr("ang p")
                        font.pixelSize: 12
                    }
                    Text {
                        text: qsTr("ang d")
                        font.pixelSize: 12
                    }Text {
                        text: qsTr("acc p")
                        font.pixelSize: 12
                    }
                }

                Column {
                    spacing: 10
                    anchors.bottom: cl5.bottom


                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                    }
                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                    }
                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                    }
                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                    }
                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                    }
                }
            }
        }

        Column {
            spacing: 1
            anchors.bottom: column3.bottom
            anchors.left: column3.right
            anchors.leftMargin: 10

            Slider {
                id: slider
                width: 300
                height: 20
                snapMode: Slider.SnapOnRelease
                value: 0.5
            }

            Slider {
                id: slider1
                width: 300
                height: 20
                snapMode: Slider.SnapOnRelease
                value: 0.5
            }

            Slider {
                id: slider2
                width: 300
                height: 20
                snapMode: Slider.SnapOnRelease
                value: 0.5
            }
        }

        Column {
            spacing: 1
            id: column3
            anchors.left: parent.left
            anchors.top: checkBoxs.bottom
            anchors.topMargin: 20


            Text {
                id: text2
                text: qsTr("deg")
                font.pixelSize: 12
            }

            ComboBox {
                id: comboBox
                width: 100
                height: 30
                font.pixelSize: 12
                model: ["COM pos", "Pelv Rot", "UpperBody Rotation",
                    "Right Hand pos", "Right Hand rot", "Left Hand pos", "Left Hand rot"]
            }

            Slider {
                id: slider3
                width: 100
                height: 20
                value: 0.0
            }
        }

        Column {
            id: torquesolver
            spacing: 1
            anchors.top: custaskgain.bottom
            anchors.topMargin: 5
            anchors.right: custaskgain.right


            Text {
                text: qsTr("Torque Solver")
                font.pixelSize: 12
            }

            ComboBox {
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["Original", "QP1", "QP2", "QP2_junhee", "QP3"]
            }

            Text {
                text: qsTr("Contact redistribution")
                font.pixelSize: 12
            }

            ComboBox {
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["Yslee", "QP", "off"]
            }

            CheckBox {
                id: checkBox1
                height: 20
                text: qsTr("Maintain LC")
                font.pixelSize: 12
            }

        }

        Column {
            id: send
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            spacing: 5


            Row {
                spacing: 10
                anchors.right: parent.right

                Text {
                    id: text3
                    text: qsTr("Traj Time")
                    font.pixelSize: 12
                }

                TextField {
                    height: 15
                    width: 120

                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }
            }

            Row {
                spacing: 10
                anchors.right: parent.right

                Text {
                    id: text4
                    text: qsTr("Mode")
                    font.pixelSize: 12
                }

                ComboBox {
                    width: 120
                    height: 30
                    font.pixelSize: 12
                    model: ["0. COM pos", "1. COM pos + rot", "2. COM ,Upper", "3. Pelv,Upper",
                        "4. left single", "5. right single", "6. --", "7. multi contact", "8. --",
                        "9. --", "10. CustomController 1", "11. CustomController 2" ,"12. CustomController 3",
                        "13. CustomController 4", "14. CustomController 5"]

                }
            }

            Button {
                id: button
                width: 200
                text: qsTr("SEND")
            }
        }

        Row {
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            spacing: 3



            Text {
                text: qsTr("que name")
                font.pixelSize: 12
            }

            TextField {
                height: 15
                font.pixelSize: 12
                horizontalAlignment: TextInput.AlignHCenter
                topPadding: 0
                bottomPadding: 0
            }

            Button {
                height: 30
                text: qsTr("Add que")
            }
        }
    }

    Frame {

        id: frame2
        width: 181
        height: 501
        anchors.left: frame1.right
        anchors.leftMargin: 3
        anchors.top: frame1.top
        anchors.bottom: frame3.bottom

        Column {
            id: column1
            spacing: 6
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter:parent.horizontalCenter



            Text {
                id: text1
                text: qsTr("Global Position")
                font.pixelSize: 12
            }

            Button {
                width: 150
                height: 30
                font.pixelSize: 12
                text: qsTr("Init Yaw")
                onClicked: {
                    ros.inityaw()
                }

            }
            Button {
                text: qsTr("qdot Lpf")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.enablelpf()
                }
            }
            Button {
                text: qsTr("State Estimation")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.stateestimationcb()
                }
            }
            Button {
                text: qsTr("SE by FT")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.sebyft()
                }
            }
            Button {
                text: qsTr("virtual joint(sim)")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.simvj()
                }
            }
            Button {
                text: qsTr("Ignore IMU")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.igimubtn()
                }
            }

            Text {
                text: qsTr("Robot Control")

                font.pixelSize: 12
            }

            Button {
                text: qsTr("GravityControl")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.gravcompcb()
                }
            }
            Button {
                text: qsTr("PositionControl")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.posconcb()
                }
            }
            Button {
                text: qsTr("Position(Grav))")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.posgravconcb()
                }
            }
            Button {
                text: qsTr("torqueredis")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.torquerediscb()
                }
            }




            Text {
                text: qsTr("Data")
                font.pixelSize: 12
            }

            Button {
                text: qsTr("help")
                width: 150
                height: 30
                font.pixelSize: 12
            }
            Button {
                text: qsTr("Print Data")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.printdata()
                }
            }
            Button {
                text: qsTr("Show Data")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.dshowbtn()
                }
            }

        }
    }

    Frame {
        id: frame3
        anchors.left: frame1.left
        anchors.right: frame1.right
        anchors.bottomMargin: 11
        anchors.top: frame1.bottom
        anchors.topMargin: 3
        width: 610
        height: 130

        Text {
            anchors.left: parent.left
            anchors.top: parent.top
            text: qsTr("Walking Control")
            font.pixelSize: 12
        }

        Row {
            id: row
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            spacing: 10

            Column {
                spacing: 5
                anchors.bottom: parent.bottom

                Text {
                    id: text5
                    text: qsTr("x")
                    font.pixelSize: 12
                }

                Text {
                    id: text9
                    text: qsTr("y")
                    font.pixelSize: 12
                }

                Text {
                    id: text8
                    text: qsTr("z")
                    font.pixelSize: 12
                }

                Text {
                    id: text7
                    text: qsTr("height")
                    font.pixelSize: 12
                }

                Text {
                    id: text6
                    text: qsTr("theta")
                    font.pixelSize: 12
                }



            }

            Column {
                spacing: 5
                anchors.bottom: parent.bottom

                TextField {
                    width: 60
                    height: 15

                    text: qsTr("Text Field")
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    width: 60
                    height: 15

                    text: qsTr("Text Field")
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    width: 60
                    height: 15

                    text: qsTr("Text Field")
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    width: 60
                    height: 15

                    text: qsTr("Text Field")
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    width: 60
                    height: 15

                    text: qsTr("Text Field")
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }




            }
        }

        Row {
            id: row2
            anchors.top: row.top
            anchors.left: row.right
            anchors.leftMargin: 20
            spacing: 10

            Column {
                spacing: 5
                Text {
                    text: qsTr("step_length_x")
                    font.pixelSize: 12
                }

                Text {
                    text: qsTr("step_length_y")
                    font.pixelSize: 12
                }

            }

            Column {
                id: column
                spacing: 5

                TextField {
                    width: 60
                    height: 15
                    text: qsTr("Text Field")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }

                TextField {
                    width: 60
                    height: 15
                    text: qsTr("Text Field")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }

            }

        }

        Column {
            id: column2
            anchors.left: row2.right
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -10
            spacing: -5

            ComboBox {
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["DCM", "Previewcontrol", "MPC"]

            }

            ComboBox {
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["PELVIS", "COM"]

            }

            ComboBox {
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["IK", "COMJacobian", "Torque"]

            }

            ComboBox {
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["None", "COM Damping", "PELV_CLIK"]

            }

            ComboBox {
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["RIGHT", "LEFT"]

            }




        }

        Row {
            id: checkBoxs2
            anchors.top: row2.bottom
            anchors.topMargin: 10
            anchors.right: row2.right
            spacing: 10

            CheckBox {
                height: 20
                text: qsTr("DOB")
                font.pixelSize: 12
            }

            CheckBox {
                height: 20
                text: qsTr("IMU")
                font.pixelSize: 12

            }

        }

        CheckBox {
            anchors.top: checkBoxs2.bottom
            anchors.left: checkBoxs2.left
            height: 20
            text: qsTr("mom")
            font.pixelSize: 12

        }

        Column {
            anchors.right: parent.right
            anchors.top: parent.top
            spacing: 5


            Button {
                width: 160
                text: qsTr("walking init")
            }

            Button {
                width: 160
                text: qsTr("walking start")
            }
        }
    }


    Frame{
        id:frame4
        height: 332
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: frame2.right
        anchors.leftMargin: 3
        anchors.top: parent.top
        anchors.topMargin: 8

        ListView {
            id:listView
            x: 831
            y: 49
            anchors.fill: parent

            model: Qt.fontFamilies()

            delegate: ItemDelegate {
                text: modelData
                width: parent.width
                highlighted: ListView.isCurrentItem
                onClicked: listView.currentIndex = index
            }

            ScrollIndicator.vertical: ScrollIndicator { }
        }
    }

    Row {
        anchors.top: frame4.bottom
        anchors.topMargin: 10
        anchors.left: frame4.left

        spacing: 5

        Button {
            width: 65
            height: 48
            text: qsTr("delete")
            font.pixelSize: 12
        }
        Button {
            width: 65
            height: 48
            text: qsTr("reset")
            font.pixelSize: 12
        }
        Button {
            width: 65
            height: 48
            text: qsTr("Send")
            font.pixelSize: 12
        }

    }


}







/*##^##
Designer {
    D{i:0;formeditorZoom:1.100000023841858}
}
##^##*/
