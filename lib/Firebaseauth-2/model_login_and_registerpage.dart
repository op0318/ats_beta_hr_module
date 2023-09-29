import 'package:ats_beat_hr_module/Firebaseauth-2/modelauth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './modelhomepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  String? errormessage='';
  bool isLogin=true;

  final _emailcontroller=TextEditingController();
  final _passwordcontroller=TextEditingController();

  Widget _entryfield(String title,TextEditingController controller)
  {
    return TextField(decoration: InputDecoration(
        labelText: title),
        controller:controller);
  }
Widget errmessage()
{
  return  Text(errormessage==''?'':'Humm ? $errormessage');
}

Future<void>signinwithemailandpassword()async{
    try
    {
    await Authone().signinwithemalandpassword(
        email: _emailcontroller.text,
        password: _passwordcontroller.text);}
        on FirebaseAuthException catch(e)
  {
    setState(() {
      errormessage=e.message;
    });
  }

}
Future<void>createuserwithemailandpassword()async{
    try {
      await Authone().createuserwithemailandpassword(
          email: _emailcontroller.text, password: _passwordcontroller.text);
    }on FirebaseAuthException catch(e)
  {
    setState(() {
      errormessage=e.message;
    });

  }
}
Widget _submitbutton()
{
  return ElevatedButton(
      onPressed: isLogin?signinwithemailandpassword:createuserwithemailandpassword,
       child:Text(isLogin?'login':'register'));
}




@override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}




