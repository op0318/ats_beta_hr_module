
import 'package:ats_beat_hr_module/Firebaseauth/testhomepage.dart';
import 'package:ats_beat_hr_module/Firebaseauth/widget_tree.dart';
import 'package:ats_beat_hr_module/Pages/Authentication/Login.dart';
import 'package:ats_beat_hr_module/Pages/Dashboard.dart';
import 'package:ats_beat_hr_module/Pages/welcomepages/WelcomeScreen-3.dart';
import 'package:ats_beat_hr_module/blocPattern/Employee.dart';
import 'package:ats_beat_hr_module/getdata.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './blocPattern/Employeebloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



void main()
{
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
//runApp( MaterialApp(home: getdata()));
runApp(Homepage());


}
   //SplashscreenApp()

//quiz App








