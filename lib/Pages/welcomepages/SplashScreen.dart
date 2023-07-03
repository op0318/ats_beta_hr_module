
import 'dart:async';


import 'package:ats_beat_hr_module/Pages/welcomepages/WelcomeScreen-1.dart';
import 'package:ats_beat_hr_module/Pages/welcomepages//homepage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:splashscreen/splashscreen.dart';

import '../Dashboard.dart';



class SplashscreenApp extends StatefulWidget {

  @override

  State<SplashscreenApp> createState() => _SplashscreenAppState();
}


class _SplashscreenAppState extends State<SplashscreenApp> {




  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 10),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()
    )
    )
    );
  }





  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width*1,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red,
          Colors.green,Colors.blue],)),
          child: Center(
            child: Text('ATS',style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,fontSize: 30)),
          ),
        )


      );
  }
}
