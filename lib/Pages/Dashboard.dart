import 'dart:io';

import 'package:flutter/material.dart';
import './Dashboard.dart';
class dashboard extends StatelessWidget {
   dashboard({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    var myheight=MediaQuery.of(context).size.height;
    var mywidth=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Expanded(
              flex: 3,
              child: Container(
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: CircleAvatar(radius: 35,
                              child: Image.asset('assets/images/Hrdashboard/profile.png'),),
                          ),
                        ),
                        SizedBox(width: 40,),
                        Text('HR Dashboard',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(width: 50,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_rounded,color: Colors.white,))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 125,bottom: 5,top: 10),
                            child: Text('Employee Name:Thiruoorthi.M',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white) ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:125,bottom: 5,top: 5),
                            child: Text('Employeed Id  :10801',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only( left: 125,bottom: 5,top: 5),
                            child: Text('Designation:HR',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                          )
                        ],
                      ),
                    ),SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text('Time:9:50 Am',style: TextStyle(fontSize:17,color: Colors.white,fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10,width: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(children: [Text('Date:20.05.2023',style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,fontSize: 17)),
                        SizedBox(width: 100,),
                        Text('Monday',style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize: 17),)],),
                    )


                  ])),
                  decoration: BoxDecoration(color: Color.fromRGBO(0, 68, 102, 1),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight:Radius.circular(25) )),)),
            Expanded(flex: 4,
                child: Container(child: Column(
                  children: [Padding(
                    padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
                    child: Row(children: [Container(

                        height:myheight*0.11,
                        width: mywidth*0.43,
                        child: Card(elevation: 10,
                          color: Color.fromRGBO(0, 68, 102, 1),
                          child: Center(child: Column(
                            children: [
                              Image.asset('assets/images/Hrdashboard/profileimage.png'),
                              Text('Employee Details',style: TextStyle(color: Colors.white),)
                            ],
                          )),)),SizedBox(width: 20),
                      Container(
                      height: myheight*0.11,width: mywidth*0.43,
                      child: Card(color:Color.fromRGBO(0, 68, 102, 1),
                          child: Center(child: Column(
                            children: [
                              Image.asset('assets/images/Hrdashboard/leaveapply.png'),
                              Text('Leave Notifications',style: TextStyle(color: Colors.white),)
                            ],
                          ))),)],),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
                      child: Row(children: [Container(

                          height:myheight*0.11,
                          width: mywidth*0.43,
                          child: Card(elevation: 10,
                            color: Color.fromRGBO(0, 68, 102, 1),
                            child: Center(
                              child: Column(
                                children: [
                                  Image.asset('assets/images/Hrdashboard/payslip.png'),
                                  Text('Pay Slip',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),)),SizedBox(width: 20),Container(
                        height: myheight*0.11,width: mywidth*0.43,
                        child: Card(color:Color.fromRGBO(0, 68, 102, 1),
                            child: Center(
                              child: Column(
                                children: [
                                  Image.asset('assets/images/Hrdashboard/teammembers.png')
                                  ,
                                  Text('My Team Members',style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            )),)],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                      child: Row(children: [Container(

                          height:myheight*0.11,
                          width: mywidth*0.43,
                          child: Card(elevation: 10,
                            color: Color.fromRGBO(0, 68, 102, 1),
                            child: Center(
                              child: Column(
                                children: [
                                  Image.asset('assets/images/Hrdashboard/event.png'),
                                  Text('Events',style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),)),SizedBox(width: 20),Container(
                        height: myheight*0.11,width: mywidth*0.43,
                        child: Card(color:Color.fromRGBO(0, 68, 102, 1),
                            child: Center(child: Column(
                              children: [
                                Image.asset('assets/images/Hrdashboard/addnewemp.png'),
                                Text('Add new Employee',style: TextStyle(color: Colors.white),),
                              ],
                            ))),)],),
                    ),Padding(padding: EdgeInsets.all(15),
                    child: Container(decoration: BoxDecoration( ),

                        height: 50,width: 200,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Color.fromRGBO(0, 68, 102, 1)) ),
                          onPressed: () {

                          },child: Text('SIGN IN'),)),)],
                ),))
          ]),
          bottomNavigationBar:BottomNavigationBar(backgroundColor: Color.fromRGBO(0, 68,102, 1),
          items:<BottomNavigationBarItem>[
            BottomNavigationBarItem(backgroundColor: Colors.white,
              icon:Icon(Icons.menu,color: Colors.white),label:'' ),
            BottomNavigationBarItem(icon:CircleAvatar(backgroundColor: Colors.white,
              child: Icon(Icons.home_outlined)),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.logout,color: Colors.white),label: ''),],)
      ),
    );
  }
  }

