import 'package:ats_beat_hr_module/Pages/Authentication/Login.dart';
import 'package:ats_beat_hr_module/Pages/Dashboard.dart';
import 'package:ats_beat_hr_module/Pages/welcomepages/SplashScreen.dart';
import 'package:ats_beat_hr_module/Pages/welcomepages/WelcomeScreen-3.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main()async
{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home:SplashscreenApp()));
}




