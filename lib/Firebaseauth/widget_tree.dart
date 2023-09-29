import 'package:flutter/material.dart';
import '../Firebaseauth-2/modelauth.dart';
import './firebaseauth.dart';
import './testhomepage.dart';
import './login_and_register_page.dart';

class widgettree extends StatefulWidget {
  const widgettree({Key? key}) : super(key: key);

  @override
  State<widgettree> createState() => _widgettreeState();
}

class _widgettreeState extends State<widgettree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: Authone().Authstatechange,
          builder:(context, snapshot)
          {
            if(snapshot.hasData)
              {
                return Homepage();
              }
            else
              {
                return const Login();
              }
          }
         ),
    );
  }
}

