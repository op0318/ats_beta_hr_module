import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './firebaseauth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final User? user=Auth().currentuser;
  Future<void>signout()async
  {
    await Auth().signout();
  }
  Widget _title()
  {
    return const Text('Firebase Auth');
  }

  Widget _userid()
  {
return Text(user?.email??'user email');
  }

Widget _signoutButton()
{
  return ElevatedButton(onPressed:signout, child:Text('Sign Out'));
}
@override
Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: _title()),
      body: Container(
        height:double.infinity ,
        width:double.infinity ,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_userid(),
        _signoutButton()],
      ),),

    );
  }
}
