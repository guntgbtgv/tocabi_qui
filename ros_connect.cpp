
#include "ros_connect.h"


#define min(x, y) (((x) < (y)) ? (x) : (y))
#define max(x, y) (((x) > (y)) ? (x) : (y))



ros_connect::ros_connect(QObject *parent, ros::NodeHandle &nh) : QObject(parent)
    {
        button_pub = nh.advertise<std_msgs::String>("/tocabi/command", 100);
        joint_sub = nh.subscribe("/tocabi/jointstates", 1, &ros_connect::joint_cb, this);
        sensor_sub = nh.subscribe("/mujoco_ros_interface/sensor_states", 1, &ros_connect::sensor_cb, this);
        time_sub = nh.subscribe("/tocabi/time", 1, &ros_connect::time_cb, this);
        m_Q = parent;

        pos_sub = nh.subscribe("/tocabi/point", 1, &ros_connect::pos_cb, this);
        tt = 0;

        joystick_sub = nh.subscribe("/controller/gui_command",1,&ros_connect::joystick_cb, this);

        com_pub = nh.advertise<std_msgs::String>("/tocabi/command", 100);
        task_pub = nh.advertise<tocabi_controller::TaskCommand>("/tocabi/taskcommand", 100);
        velcommand_pub = nh.advertise<tocabi_controller::VelocityCommand>("/tocabi/velcommand", 100);

        android_pub = nh.advertise<tocabi_controller::TaskCommand>("/tocabi/taskcommand", 100);
        android_sub  =  nh.subscribe("/controller/android_command", 1 , &ros_connect::android_cb,this);

        char buf[128];
        char buf2[128];
        std::sprintf(buf, "%6.2f", 15.48721241);
        std::sprintf(buf2, "t%d", 1);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);


        QString tt_ = m_Q->findChild<QObject *>(buf2)->property("text");
        std::cout<<"Get text : "<< tt_.toStdString()<<std::endl;
        
    }

void ros_connect::initializebtncb() 
    {
        com_msg.data = std::string("ecatinit");
        com_pub.publish(com_msg);
    }

void ros_connect::safetyresetbtncb()
    {
//         for (int i = 0; i < 33; i++) 
//         {
//             safetylabels[i]->setStyleSheet("QLabel { background-color : rgb(138, 226, 52) ; color : black; }");
//         }
//         com_msg.data = std::string("safetyreset");
//         com_pub.publish(com_msg);
    }

void ros_connect::safety2btncb()
    {
//         for (int i = 0; i < 33; i++)
//         {
//             safetylabels[i]->setStyleSheet("QLabel { background-color : yellow ; color : black; }");
//         }
//         com_msg.data = std::string("safetydisable");
//         com_pub.publish(com_msg);
    }

void ros_connect::disablelower()
    {
        com_msg.data = std::string("disablelower");
        com_pub.publish(com_msg);
    }

void ros_connect::inityaw()
    {
        com_msg.data = std::string("inityaw");
        com_pub.publish(com_msg);
    }

void ros_connect::enablelpf()
    {
        com_msg.data = std::string("enablelpf");
        com_pub.publish(com_msg);
    }

void ros_connect::stateestimationcb()
    {
        com_msg.data = std::string("stateestimation");
        com_pub.publish(com_msg);
    }

void ros_connect::sebyft()
    {
        com_msg.data = std::string("sebyft");
        com_pub.publish(com_msg);
    }

void ros_connect::simvj()
    {
        com_msg.data = std::string("simvirtualjoint");
        com_pub.publish(com_msg);
    }

void ros_connect::igimubtn()
    {
        com_msg.data = std::string("imuignore");
        com_pub.publish(com_msg);
    }

void ros_connect::gravcompcb()
    {
        com_msg.data = std::string("gravity");
        com_pub.publish(com_msg);
    }

void ros_connect::posconcb()
    {
        com_msg.data = std::string("positioncontrol");
        com_pub.publish(com_msg);
    }

void ros_connect::posgravconcb()
    {
        com_msg.data = std::string("positiongravcontrol");
        com_pub.publish(com_msg);
    }

void ros_connect::torquerediscb()
    {
        com_msg.data = std::string("torqueredis");
        com_pub.publish(com_msg);
    }

void ros_connect::printdata()
    {
        com_msg.data = std::string("printdata");
        com_pub.publish(com_msg);
    }

void ros_connect::dshowbtn()
    {
        com_msg.data = std::string("showdata");
        com_pub.publish(com_msg);
    }

void ros_connect::click_ros(QString msg)
    {
        std::string str1 = msg.toStdString();
        const char *p = str1.c_str();

        if (strcmp(p, "left"))
        {
            ChangeConMode(-1);
        }
        if (strcmp(p, "right"))
        {
            ChangeConMode(1);
        }

        velcommand_pub.publish(velcmd_msg);
    }

void ros_connect::tasksendcb()
    {
        handletaskmsg();

        task_pub.publish(task_msg);

        // ui_.text_l_x->setText(QString::number(0.0, 'f', 1));
        // ui_.text_l_y->setText(QString::number(0.0, 'f', 1));
        // ui_.text_l_z->setText(QString::number(0.0, 'f', 1));
        // ui_.text_l_roll->setText(QString::number(0.0, 'f', 1));
        // ui_.text_l_pitch->setText(QString::number(0.0, 'f', 1));
        // ui_.text_l_yaw->setText(QString::number(0.0, 'f', 1));

        // ui_.text_r_x->setText(QString::number(0.0, 'f', 1));
        // ui_.text_r_y->setText(QString::number(0.0, 'f', 1));
        // ui_.text_r_z->setText(QString::number(0.0, 'f', 1));
        // ui_.text_r_roll->setText(QString::number(0.0, 'f', 1));
        // ui_.text_r_pitch->setText(QString::number(0.0, 'f', 1));
        // ui_.text_r_yaw->setText(QString::number(0.0, 'f', 1));
    }

void ros_connect::vir_TaskHandle()
    {
        handletaskmsg();
    }

void ros_connect::rmmodxpad()
     {   
    //     std::string str = "rmmod xpad";
    //     const char *c = str.c_str();
    //     system(c);
     }
void ros_connect::joyconfig()
     {
    //     // std::string str = "xboxdrv --config /usr/share/doc/xboxdrv/examples/default.xboxdrv";
    //     std::string str1 = "cd /home/dyros_raspi/xow";
    //     std::string str2 = "./xow";

    //     const char *c1 = str1.c_str();
    //     const char *c2 = str2.c_str();
    //     system(c1);
    //     system(c2);
     }
    
void ros_connect::virjoy(float x, float y, int i)
    {
        velcmd_msg.des_vel.resize(6);
        int arrarychange = i; // i = 0(left : pos ) or 2(right : rot) or 4 (optional pos) or 5 (optional rot)
        double axes[6] = {0, 0, 0, 0, 0, 0};

        if (i == 0 || i == 2)
        {
            axes[arrarychange] = (double)(x - 37.5) / 75;
            axes[arrarychange + 1] = (double)(y - 37.5) / 75;
        }
        else if (i == 4 || i == 5)
        {
            axes[arrarychange] = x;
        }

        switch (velcmd_msg.task_link)
        {
        case 0: // pos : COM rot : pelv
            velcmd_msg.des_vel[0] = axes[1] / -40.;
            velcmd_msg.des_vel[1] = axes[0] / -40.;
            velcmd_msg.des_vel[2] = ((axes[4]) / 40.); //com pos

            velcmd_msg.des_vel[3] = axes[2] / 4.;
            velcmd_msg.des_vel[4] = axes[3] / -4.;
            velcmd_msg.des_vel[5] = ((axes[5]) / -4.); //pelv rot
            break;

        case 1: // rot : upperbody
            velcmd_msg.des_vel[0] = 0;
            velcmd_msg.des_vel[1] = 0;
            velcmd_msg.des_vel[2] = 0;
            velcmd_msg.des_vel[3] = axes[2] / 4.;
            velcmd_msg.des_vel[4] = axes[3] / -4.;
            velcmd_msg.des_vel[5] = ((axes[5]) / -4.); //upperbody rot
            break;

        case 2: // righthand
            velcmd_msg.des_vel[0] = axes[1] / -8.;
            velcmd_msg.des_vel[1] = axes[0] / -8.;
            velcmd_msg.des_vel[2] = ((axes[4]) / 20.); //righthand pos

            velcmd_msg.des_vel[3] = axes[2] / 4.;
            velcmd_msg.des_vel[4] = axes[3] / -4.;
            velcmd_msg.des_vel[5] = ((axes[5]) / -4.); //righthand rot
            break;

        case 3: // lefthand
            velcmd_msg.des_vel[0] = axes[1] / -8.;
            velcmd_msg.des_vel[1] = axes[0] / -8.;
            velcmd_msg.des_vel[2] = ((axes[4]) / 20.); //lefthand pos

            velcmd_msg.des_vel[3] = axes[2] / 4.;
            velcmd_msg.des_vel[4] = axes[3] / -4.;
            velcmd_msg.des_vel[5] = ((axes[5]) / -4.); //lefthand rot
            break;

        default:
            break;
        }

        velcommand_pub.publish(velcmd_msg);
    }

void ros_connect::button_ros(int id, QString msg)
    {
        std_msgs::String msg_;
        msg_.data = msg.toUtf8().constData();

        button_pub.publish(msg_);
    }

    

void ros_connect::switch_ros(int id, char *msg){

    }

void ros_connect::update()
    {
        ros::spinOnce();
    }
double ros_connect::t_x(){
        return tt;
    }

void ros_connect::joint_cb(sensor_msgs::JointStateConstPtr msg){
    char buf[128];
    char buf2[128];
    float dot;

    // Left Arm
    for (int i = 15; i < 23; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i + 4);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i - 2);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }

    // Right Arm
    for (int i = 25; i < 33; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i - 12);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i - 6);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }

    // Left Leg
    for (int i = 0; i < 6; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i + 7);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i + 7);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }

    // Right Leg
    for (int i = 6; i < 12; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i - 5);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i - 5);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }

    // Waist + Upper body
    for (int i = 12; i < 15; i++){
        dot = msg->position[i] * 50.0;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i + 17);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i + 17);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", pp(dot));
    }
}

void ros_connect::sensor_cb(mujoco_ros_msgs::SensorStateConstPtr msg)
{
    char buf[128];
    char buf2[128];

    for (int i = 0; i < 4; i++){
        for (int j = 0; j < 3; j++){
            std::sprintf(buf, "%8.3f", msg->sensor[i + 4].data[j]);
            std::sprintf(buf2, "t%d", 32 + 3 * i + j);
            m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

            std::sprintf(buf, "#%02X0000", (int)(pp(msg->sensor[i + 4].data[j]) * 256.0));
            m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

            std::sprintf(buf2, "p%d", 32 + 3 * i + j);
            float ratio = 1.0;
            if ((i == 0) || (i == 2)){
                if (j == 2){
                    ratio = 0.3;
                }
            }
            m_Q->findChild<QObject *>(buf2)->setProperty("value", ratio * pp(msg->sensor[i + 4].data[j]));
        }
    }
}

void ros_connect::time_cb(std_msgs::Float32ConstPtr msg)
{
    char buf[128];
    std::sprintf(buf, "%8.4f", msg->data);
    m_Q->findChild<QObject *>("time_text")->setProperty("text", buf);
}

void ros_connect::pos_cb(geometry_msgs::PolygonStampedConstPtr msg)
{
    int scale = 500;

    double foot_x = 0.28;
    double foot_h = 0.1;
    double com_l = 0.05;

    foot_x = com_l;
    foot_h = com_l;

    int foot_dis_x_max = 600 - foot_x * scale;
    int foot_dis_y_max = 300 - foot_h * scale;
    int com_dis_x_max = 600 - com_l * scale;
    int com_dis_y_max = 300 - com_l * scale;

    m_Q->findChild<QObject *>("rec1")->setProperty("width", foot_x * scale);
    m_Q->findChild<QObject *>("rec1")->setProperty("height", foot_h * scale);
    m_Q->findChild<QObject *>("rec2")->setProperty("width", foot_x * scale);
    m_Q->findChild<QObject *>("rec2")->setProperty("height", foot_h * scale);
    m_Q->findChild<QObject *>("com1")->setProperty("width", com_l * scale);
    m_Q->findChild<QObject *>("com1")->setProperty("height", com_l * scale);

    //point 1 -> right foot
    int x = min(msg->polygon.points[1].x * scale + foot_dis_x_max * 0.5 - foot_x * scale * 0.5, foot_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec1")->setProperty("x", x);

    x = min(msg->polygon.points[1].y * scale + foot_dis_y_max * 0.5 - foot_h * scale * 0.5, foot_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec1")->setProperty("y", x);

    // point 2 -> left foot
    x = min(msg->polygon.points[2].x * scale + foot_dis_x_max * 0.5 - foot_x * scale * 0.5, foot_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec2")->setProperty("x", x);

    x = min(msg->polygon.points[2].y * scale + foot_dis_y_max * 0.5 - foot_h * scale * 0.5, foot_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec2")->setProperty("y", x);

    foot_x = 0.26;
    foot_h = 0.1;
    double dis_x = 0.0317;

    m_Q->findChild<QObject *>("rec3")->setProperty("width", foot_x * scale);
    m_Q->findChild<QObject *>("rec3")->setProperty("height", foot_h * scale);

    x = min(msg->polygon.points[1].x * scale + foot_dis_x_max * 0.5 - foot_x * scale * 0.5 - dis_x * scale, foot_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec3")->setProperty("x", x);

    x = min(msg->polygon.points[1].y * scale + foot_dis_y_max * 0.5 - foot_h * scale * 0.5, foot_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec3")->setProperty("y", x);

    m_Q->findChild<QObject *>("rec4")->setProperty("width", foot_x * scale);
    m_Q->findChild<QObject *>("rec4")->setProperty("height", foot_h * scale);

    x = min(msg->polygon.points[2].x * scale + foot_dis_x_max * 0.5 - foot_x * scale * 0.5 - dis_x * scale, foot_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec4")->setProperty("x", x);

    x = min(msg->polygon.points[2].y * scale + foot_dis_y_max * 0.5 - foot_h * scale * 0.5, foot_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("rec4")->setProperty("y", x);

    //point 0 com position

    x = min(msg->polygon.points[0].x * scale + com_dis_x_max * 0.5 - com_l * scale * 0.5, com_dis_x_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("com1")->setProperty("x", x);

    x = min(msg->polygon.points[0].y * scale + com_dis_y_max * 0.5 - com_l * scale * 0.5, com_dis_y_max);
    x = max(x, 0.0);
    m_Q->findChild<QObject *>("com1")->setProperty("y", x);
}

 

 

///////////////////////////////////////////////////////////////////////////////////////////////

void ros_connect::joystick_cb(const sensor_msgs::Joy::Ptr &msg)
{   
    // default 0 (Not control both LT,RT yet) , 1 (Control LT only not RT), 2 (Control RT only not LT) , 3(Control LT RT Both)
    
    velcmd_msg.des_vel.resize(6);
    sensor_msgs::Joy::Ptr Rightmsg;
    Rightmsg = msg;
    float temp[3] = {msg->axes[2], msg->axes[3], msg->axes[4]};
    Rightmsg->axes[4] = temp[0];
    Rightmsg->axes[2] = temp[1];
    Rightmsg->axes[3] = temp[2];

    if(JoyFlag ==0){
    if(abs(Rightmsg->axes[4]!= 0))
        LTFlag = 1;
    if(abs(Rightmsg->axes[5]!= 0))
        RTFlag = 1;
    if(LTFlag == 0) {Rightmsg->axes[4] = 1;}
    if(RTFlag == 0) {Rightmsg->axes[5] = 1;}
    if(LTFlag == 1 && RTFlag ==0)
    {
        Rightmsg->axes[5] = 1;
        JoyFlag = 0; 
    }
    if(LTFlag == 0 && RTFlag == 1)
    {
        Rightmsg->axes[4] = 1;
        JoyFlag = 0;
    }
    if(LTFlag == 1 && RTFlag == 1)
    { JoyFlag = 1;}
    if(LTFlag == 0 && RTFlag == 0)
    { JoyFlag = 0;}
        }

        
    for ( int i = 0; i<4 ; i++)
    {
        if(abs(Rightmsg->axes[i]) <= 0.1) // value of Threshold
        {
            Rightmsg->axes[i] = 0;
        }
    }  //Setting Threshold value 

    char buf[128];
    char buf2[128];
    float dot;

    // axes
    for (int i = 0; i < 4; i++)
    {
        dot = Rightmsg->axes[i];
        if((i==1) || (i==3))    std::sprintf(buf, "%8.3f", dot);
        else                    std::sprintf(buf, "%8.3f", -dot);
        std::sprintf(buf2, "t%d", i + 46);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot * 100.0) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i + 44);
        if((i==1) || (i==3))    m_Q->findChild<QObject *>(buf2)->setProperty("value", dot);
        else                    m_Q->findChild<QObject *>(buf2)->setProperty("value", -dot);
    }

    for (int i = 4; i < 6; i++)     //L2, R2
    {
        if(Rightmsg->buttons[i])     dot = (Rightmsg->axes[i] / 2.0) - 0.5;
        else                    dot = (Rightmsg->axes[i] / -2.0) + 0.5;
        std::sprintf(buf, "%8.3f", dot);
        std::sprintf(buf2, "t%d", i + 46);
        m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

        std::sprintf(buf, "#%02X0000", (int)(pp(dot * 100.0) * 256.0));
        m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

        std::sprintf(buf2, "p%d", i + 44);
        m_Q->findChild<QObject *>(buf2)->setProperty("value", dot);
    }

    for (int i = 8; i < 10; i++)
    {
        std::sprintf(buf2, "b%d", i);
        if (Rightmsg->axes[i - 2] > 0.5)
            m_Q->findChild<QObject *>(buf2)->setProperty("checked", true);
        else
            m_Q->findChild<QObject *>(buf2)->setProperty("checked", false);
        std::sprintf(buf2, "b%d", i + 2);
        if (Rightmsg->axes[i - 2] < -0.5)
            m_Q->findChild<QObject *>(buf2)->setProperty("checked", true);
        else
            m_Q->findChild<QObject *>(buf2)->setProperty("checked", false);
    }

    // buttons
    for (int j = 0; j < 6; j++)
    {
        std::sprintf(buf, "b%d", j);
        if (Rightmsg->buttons[j])
            m_Q->findChild<QObject *>(buf)->setProperty("checked", true);
        else
            m_Q->findChild<QObject *>(buf)->setProperty("checked", false);
    }

    for (int j = 12; j < 17; j++)
    {
        std::sprintf(buf, "b%d", j);
        if (Rightmsg->buttons[j - 6])
            m_Q->findChild<QObject *>(buf)->setProperty("checked", true);
        else
            m_Q->findChild<QObject *>(buf)->setProperty("checked", false);
    }

    if (Rightmsg->buttons[6])
        Torqueon();
    if (Rightmsg->buttons[7])
        Torqueoff();   
    if (Rightmsg->buttons[0])
        handletaskmsg();
    if (Rightmsg->buttons[1])
        VirtualInitHandle();
    if(Rightmsg->buttons[8])
        EmergencyOff();
    if (Rightmsg->axes[7] != 0) {
        if (Rightmsg->axes[7] > 0)       ChangeConMode(-1);
        else if (Rightmsg->axes[7] < 0)   ChangeConMode(1);
    }
    VelocityHandle(Rightmsg);
};


void ros_connect::android_cb(const geometry_msgs::Twist::ConstPtr &msg)
    {
        char buf[128];
        char buf2[128];
        float temp[2];
        temp[0] = -msg->angular.z;
        temp[1] = -msg->linear.x;

        for (int i = 0; i < 2; i++)
        {
            float dot = (temp[i])*pow(-1, i) * 100;

            std::sprintf(buf, "%8.3f", dot);
            std::sprintf(buf2, "t%d", i +46);
            m_Q->findChild<QObject *>(buf2)->setProperty("text", buf);

            std::sprintf(buf, "#%02X0000", (int)(pp(dot) * 256.0));
            m_Q->findChild<QObject *>(buf2)->setProperty("color", buf);

            std::sprintf(buf2, "p%d", i + 44);
            m_Q->findChild<QObject *>(buf2)->setProperty("value", dot / 200.0 + 0.5);
        }

        VelHandle_android(msg);
    }

///////////////////////////////////////////////////////////////////////////////////////////////
    
void ros_connect::VirtualInitHandle()
    {
        com_msg.data = std::string("simvirtualjoint");
        com_pub.publish(com_msg);
    }

void ros_connect::Torqueon()
    {
        com_msg.data = std::string("torqueon");
        com_pub.publish(com_msg);
    }

void ros_connect::Torqueoff()
    {
        com_msg.data = std::string("torqueoff");
        com_pub.publish(com_msg);
    }

void ros_connect::EmergencyOff()
    {
        com_msg.data = std::string("emergencyoff");
        com_pub.publish(com_msg);
    }

void ros_connect::handletaskmsg()
    {
        /*
        task_msg.pelv_pitch =    ui_.pelv_pitch-> text().toFloat();
        task_msg.roll = ui_.com_roll->text().toFloat();
        task_msg.pitch = ui_.com_pitch->text().toFloat();
        task_msg.yaw = ui_.com_yaw->text().toFloat();
        task_msg.ratio = ui_.com_pos->text().toFloat();
        task_msg.height = ui_.com_height->text().toFloat();

        task_msg.left_foot = ui_.cb_lf->isChecked();
        task_msg.right_foot = ui_.cb_rf->isChecked();
        task_msg.left_hand = ui_.cb_lh->isChecked();
        task_msg.right_hand = ui_.cb_rh->isChecked();

        task_msg.l_x =        m_Q->children().fromSet() ->setProperty("text", buf);
    ui_.text_l_x->text().toFloat();
        task_msg.l_y = ui_.text_l_y->text().toFloat();
        task_msg.l_z = ui_.text_l_z->text().toFloat();
        task_msg.l_roll = ui_.text_l_roll->text().toFloat();
        task_msg.l_pitch = ui_.text_l_pitch->text().toFloat();
        task_msg.l_yaw = ui_.text_l_yaw->text().toFloat();

        task_msg.r_x = ui_.text_r_x->text().toFloat();
        task_msg.r_y = ui_.text_r_y->text().toFloat();
        task_msg.r_z = ui_.text_r_z->text().toFloat();
        task_msg.r_roll = ui_.text_r_roll->text().toFloat();
        task_msg.r_pitch = ui_.text_r_pitch->text().toFloat();
        task_msg.r_yaw = ui_.text_r_yaw->text().toFloat();

        task_msg.time = ui_.text_traj_time->text().toFloat();
        task_msg.mode = ui_.task_mode->currentIndex();

        task_msg.customTaskGain = ui_.customtaskgain->isChecked();

        task_msg.solver = ui_.solver_mode->currentIndex();

        task_msg.contactredis = ui_.cr_mode->currentIndex();

        task_msg.acc_p = ui_.accgain->text().toFloat();

        task_msg.maintain_lc = ui_.checkBox->isChecked();

        if (task_msg.customTaskGain)
        {
            task_msg.pos_p = ui_.pospgain->text().toFloat();
            task_msg.pos_d = ui_.posdgain->text().toFloat();
            task_msg.ang_p = ui_.angpgain->text().toFloat();
            task_msg.ang_d = ui_.angdgain->text().toFloat();
        }*/
    }

void ros_connect::VelocityHandle(const sensor_msgs::Joy::ConstPtr& msg)
    {
        velcmd_msg.des_vel.resize(6);
        
        switch (velcmd_msg.task_link) {
        case 0:     // pos : COM rot : pelv 
            velcmd_msg.des_vel[0] = (double)msg->axes[1] / 40.;
            velcmd_msg.des_vel[1] = (double)msg->axes[0] / 40.;
            velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / -80.);  //com pos
            if(msg->buttons[4])
                velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / 80.);

            velcmd_msg.des_vel[3] = (double)msg->axes[2] / -4.;
            velcmd_msg.des_vel[4] = (double)msg->axes[3] / 4.;
            velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / 8.);  //pelv rot
            if(msg->buttons[5])
                velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / -8.);              
            break;


            
        case 1:     // rot : upperbody
            velcmd_msg.des_vel[0] = 0;
            velcmd_msg.des_vel[1] = 0;
            velcmd_msg.des_vel[2] = 0;
            velcmd_msg.des_vel[3] = (double)msg->axes[2] / -4.;
            velcmd_msg.des_vel[4] = (double)msg->axes[3] / 4.;
            velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / 8.);  //upperbody rot
            if(msg->buttons[5])
                velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / -8.);
            break;



        case 2:     // righthand
            velcmd_msg.des_vel[0] = (double)msg->axes[1] / 8.;
            velcmd_msg.des_vel[1] = (double)msg->axes[0] / 8.;
            velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / -40.);  //righthand pos
            if(msg->buttons[4])
                velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / 40.);              


            velcmd_msg.des_vel[3] = (double)msg->axes[2] / -4.;
            velcmd_msg.des_vel[4] = (double)msg->axes[3] / 4.;
            velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / 8.);  //righthand rot
            if(msg->buttons[5])
                velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / -8.);                
            break;



        case 3:     // lefthand
            velcmd_msg.des_vel[0] = (double)msg->axes[1] / 8.;
            velcmd_msg.des_vel[1] = (double)msg->axes[0] / 8.;
            velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / -40.);  //lefthand pos
            if(msg->buttons[4])
                velcmd_msg.des_vel[2] = (((double)msg->axes[4] - 1.) / 40.);


            velcmd_msg.des_vel[3] = (double)msg->axes[2] / -4.;
            velcmd_msg.des_vel[4] = (double)msg->axes[3] / 4.;
            velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / 8.);  //lefthand rot
            if(msg->buttons[5])
                velcmd_msg.des_vel[5] = (((double)msg->axes[5] - 1.) / -8.);
            break;


        default:
            break;

        }
        velcommand_pub.publish(velcmd_msg);
    }

void ros_connect::VelHandle_android(const geometry_msgs::Twist::ConstPtr &msg)
    {
        velcmd_msg.des_vel.resize(6);
        velcmd_msg.des_vel[0] = -1. * ((double)msg->angular.z / 4.);
        velcmd_msg.des_vel[1] = (double)msg->linear.x / 4.;

        velcommand_pub.publish(velcmd_msg);
    }

void ros_connect::ChangeConMode(int data)
{   
    velcmd_msg.des_vel.resize(6);
    mode_index -= data;
    if(mode_index > 3)      mode_index = 0;
    if(mode_index < 0)      mode_index = 3;
    char buf[50];
        
    std::sprintf(buf, "Mode : %d", mode_index);
       
    m_Q->findChild<QObject *>("mode")->setProperty("text", buf);
    velcmd_msg.task_link = change_mode[mode_index];
}


float ros_connect::pp(float val){
    if (val < 0){
        return (val * -1.0) / 150.0;
    }
    else{
        return val / 150.0;
    }
} 
