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
            width: 200
            height: 165
            spacing: 10
            anchors.left: mover.left
            anchors.top: mover.bottom
            anchors.topMargin: 10



            Column{
                spacing: 10
                id: cl3
                width: 48
                height: 165



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
                width: 40
                height: 140
                spacing: 10
                anchors.bottom: cl3.bottom


                TextField {
                    id: text_l_x
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    text: qsTr("3.5")
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_l_x"
                }
                TextField {
                    id: text_l_y
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    text: qsTr("3.5")
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_l_y"

                }

                TextField {
                    id:text_l_z

                    text: qsTr("3.5")
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_l_z"

                }
                TextField {
                    id:text_l_roll

                    height: 15
                    text: qsTr("3.5")
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_l_roll"

                }
                TextField {
                    id:text_l_pitch

                    height: 15
                    text: qsTr("3.5")
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_l_pitch"

                }
                TextField {
                    id:text_l_yaw

                    height: 15
                    width: 40
                    text: qsTr("3.5")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_l_yaw"

                }


            }


            Column{
                spacing: 10
                id: cl4
                width: 27
                height: 140
                anchors.bottom: cl3.bottom

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
                width: 55
                height: 165
                spacing: 10
                anchors.bottom: cl3.bottom

                Text {

                    text: qsTr("Right Arm")
                    font.pixelSize: 12
                }



                TextField {
                    id: text_r_x
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    text: qsTr("3.5")
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_r_x"
                }
                TextField {
                    id: text_r_y
                    height: 15
                    width: 40
                    text: qsTr("3.5")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_r_y"

                }

                TextField {
                    id:text_r_z
                    height: 15
                    width: 40
                    text: qsTr("3.5")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_r_z"

                }
                TextField {
                    id:text_r_roll
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    text: qsTr("3.5")
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_r_roll"

                }
                TextField {
                    id:text_r_pitch
                    height: 15
                    width: 40
                    font.pixelSize: 12
                    text: qsTr("3.5")
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_r_pitch"

                }
                TextField {
                    id:text_r_yaw
                    height: 15
                    width: 40
                    text: qsTr("3.5")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                    objectName: "text_r_yaw"

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
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("Height")
                    font.pixelSize: 12

                }
                Text {
                    text: qsTr("pelv pitch")
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
                anchors.bottom: parent.bottom

                TextField {
                    height: 15
                    width: 40
                    objectName: "com_pos"
                    text: qsTr("3.5")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }

                TextField {
                    height: 15
                    width: 40
                    objectName: "com_height"

                    text: qsTr("3.5")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }

                TextField {
                    height: 15
                    width: 40
                    objectName: "pelv_pitch"
                    text: qsTr("3.5")

                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    height: 15
                    width: 40
                    objectName: "com_roll"

                    text: qsTr("3.5")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    height: 15
                    width: 40
                    objectName: "com_pitch"

                    text: qsTr("3.5")
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    height: 15
                    width: 40
                    objectName: "com_yaw"

                    text: qsTr("3.5")
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
                id:cb_lf
                objectName: "cb_lf"
                height: 20
                text: qsTr("l foot")
                font.pixelSize: 12
                padding: 0


            }
            CheckBox {
                id:cb_rf
                objectName: "cb_rf"
                height: 20
                text: qsTr("r foot")
                font.pixelSize: 12
                padding: 0

            }
            CheckBox {
                id:cb_lh
                objectName: "cb_lh"
                height: 20
                text: qsTr("l hand")
                font.pixelSize: 12
                padding: 0

            }
            CheckBox {
                id:cb_rh
                objectName: "cb_rh"
                height: 20
                text: qsTr("r hand")
                font.pixelSize: 12
                padding: 0

            }
        }

        Column {
            id: custaskgain
            x: 468
            width: 128
            height: 146
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.right: parent.right
            spacing: 1

            CheckBox {
                id: customtaskgain
                text: qsTr("Custom Task gain")
                objectName: "customtaskgain"
                font.pixelSize: 12
                padding: 0
            }


            Row {
                spacing: 10
                enabled: customtaskgain.checked

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
                        text: qsTr("3.5")
                        objectName: "pospgain"
                    }
                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                        text: qsTr("3.5")
                        objectName: "posdgain"

                    }
                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                        text: qsTr("3.5")
                        objectName: "angpgain"

                    }
                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                        text: qsTr("3.5")
                        objectName: "angdgain"

                    }
                    TextField {
                        height: 15
                        width: 70
                        font.pixelSize: 12
                        horizontalAlignment: TextInput.AlignHCenter
                        topPadding: 0
                        bottomPadding: 0
                        text: qsTr("3.5")
                         objectName: "accgain"

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
                id: horizontalSlider_1
                objectName: "horizontalSlider_1"
                width: 300
                height: 20
                stepSize: 1
                to: 99
                from: 0
                value: 50
                onValueChanged: ros.slidervelcommand(valueAt(position), valueAt(horizontalSlider_2.position), valueAt(horizontalSlider_3.position), horizontalSlider_4.valueAt(horizontalSlider_4.position))
                onPressedChanged: value = 50

            }

            Slider {
                id: horizontalSlider_2
                objectName: "horizontalSlider_2"
                width: 300
                height: 20
                stepSize: 1
                to: 99
                from: 0
                value: 50
                onValueChanged: ros.slidervelcommand(valueAt(horizontalSlider_1.position), valueAt(position), valueAt(horizontalSlider_3.position), horizontalSlider_4.valueAt(horizontalSlider_4.position))
                onPressedChanged: value = 50

            }

            Slider {
                id: horizontalSlider_3
                objectName: "horizontalSlider_3"
                width: 300
                height: 20
                stepSize: 1
                to: 99
                from: 0
                value: 50
                onValueChanged: ros.slidervelcommand(valueAt(horizontalSlider_1.position), valueAt(horizontalSlider_2.position), valueAt(position), horizontalSlider_4.valueAt(horizontalSlider_4.position))
                onPressedChanged: value = 50


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
                objectName: "comboBox"
            }

            Slider {
                id: horizontalSlider_4
                width: 100
                height: 20
                stepSize: 1
                to: 20
                from: 1
                value: 1
                objectName: "horizontalSlider_4"
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
                id: solver_mode
                objectName: "solver_mode"
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
                id: cr_mode
                objectName: "cr_mode"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["Yslee", "QP", "off"]
                enabled: solver_mode.currentIndex == 0
            }

            CheckBox {
                id: checkBox
                objectName: "checkBox"
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
                    text: qsTr("3.5")
                    objectName: "text_traj_time"

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
                    id: task_mode
                    objectName: "task_mode"
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
                font.pixelSize: 20
                onClicked: ros.tasksendcb()
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
                id: queName
                height: 15
                font.pixelSize: 12
                horizontalAlignment: TextInput.AlignHCenter
                topPadding: 0
                bottomPadding: 0
            }

            Button {
                height: 30
                text: qsTr("Add Que")
                font.pixelSize: 12
                onClicked: mymodel.append({"task_num": mymodel.count, "name": queName.text}) + ros.que_addquebtn()
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
                    ros.button_ros(0,"inityaw")
                }

            }
            Button {
                text: qsTr("qdot Lpf")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"enablelpf")                        }
            }
            Button {
                text: qsTr("State Estimation")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"stateestimation")
                }
            }
            Button {
                text: qsTr("SE by FT")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"sebyft")
                }
            }
            Button {
                text: qsTr("virtual joint(sim)")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"simvirtualjoint")
                }
            }
            Button {
                text: qsTr("Ignore IMU")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"imuignore")
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
                    ros.button_ros(0,"gravity")
                }
            }
            Button {
                text: qsTr("PositionControl")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"positioncontrol")
                }
            }
            Button {
                text: qsTr("Position(Grav))")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"positiongravcontrol")
                }
            }
            Button {
                text: qsTr("torqueredis")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"torqueredis")
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
                    ros.button_ros(0,"printdata")
                }
            }
            Button {
                text: qsTr("Show Data")
                width: 150
                height: 30
                font.pixelSize: 12
                onClicked: {
                    ros.button_ros(0,"showdata")
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

                    text: qsTr("0.5")
                    objectName: "text_walking_x"
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    width: 60
                    height: 15
                    text: qsTr("0.0")
                    objectName: "text_walking_y"
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    width: 60
                    height: 15
                    objectName: "text_walking_z"
                    text: qsTr("0.0")
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    width: 60
                    height: 15
                    objectName: "text_walking_height"
                    text: qsTr("0.0")
                    font.pixelSize: 12
                    topPadding: 0
                    bottomPadding: 0
                }
                TextField {
                    width: 60
                    height: 15
                    objectName: "text_walking_theta"
                    text: qsTr("0.0")
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
                    text: qsTr("0.1")
                    objectName: "text_walking_steplengthx"
                    font.pixelSize: 12
                    horizontalAlignment: TextInput.AlignHCenter
                    topPadding: 0
                    bottomPadding: 0
                }

                TextField {
                    width: 60
                    height: 15
                    text: qsTr("0.0")
                    objectName: "text_walking_steplengthy"
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
                id: walking_pattern
                objectName: "walking_pattern"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["DCM", "Previewcontrol", "MPC"]

            }

            ComboBox {
                id: walking_pattern_2
                objectName: "walking_pattern_2"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["PELVIS", "COM"]

            }

            ComboBox {
                id: ik_mode
                objectName: "ik_mode"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["IK", "COMJacobian", "Torque"]

            }

            ComboBox {
                id: controlmode
                objectName: "controlmode"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["None", "COM Damping", "PELV_CLIK"]

            }

            ComboBox {
                id: step_mode
                objectName: "step_mode"
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
                id: checkBox_dob
                objectName: "checkBox_dob"
                height: 20
                text: qsTr("DOB")
                font.pixelSize: 12
            }

            CheckBox {
                id: checkBox_IMU
                objectName: "checkBox_IMU"
                height: 20
                text: qsTr("IMU")
                font.pixelSize: 12

            }

        }

        CheckBox {
            id: checkBox_mom
            objectName: "checkBox_mom"
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
                onClicked: ros.walkinginitbtncb()
            }

            Button {
                width: 160
                text: qsTr("walking start")
                onClicked: ros.walkingstartbtncb()
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


            delegate: ItemDelegate {

                text: qsTr("task " + task_num + " :" + name )
                width: parent.width
                highlighted:  ListView.isCurrentItem
                onClicked: listView.currentIndex = index

            }

            model: ListModel{ id: mymodel }
            ScrollIndicator.vertical: ScrollIndicator { }
            clip: true
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
            onClicked: mymodel.remove(listView.currentIndex)
        }

        Button {
            width: 65
            height: 48
            text: qsTr("reset")
            font.pixelSize: 12
            onClicked: mymodel.clear() + ros.que_resetbtn()
        }

        Button {
            width: 65
            height: 48
            text: qsTr("Send")
            font.pixelSize: 12
            onClicked: ros.que_sendbtn()

        }
    }


}







/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}
}
##^##*/
