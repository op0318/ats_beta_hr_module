import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './firebaseauth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String? errormessage='';
  bool isLogin=true;

  final TextEditingController _controllerEmail=TextEditingController();
  final TextEditingController _constrollerPassword=TextEditingController();

  Future<void>signInWithEmailandPassword()async{
    try {
      await Auth().signinwithemailandpassword(
          email: _controllerEmail.text,
          password: _constrollerPassword.text);
    }on FirebaseAuthException catch(e)
    {
setState(() {
  errormessage=e.message;
});
    }
  }
  Future<void>createUserWithEmailandPassword()async{
    try {
      await Auth().createuserwithemailandpassword(
          email: _controllerEmail.text, password: _constrollerPassword.text);
    }on FirebaseAuthException catch(e)
    {
      errormessage=e.message;

    }

  }

  Widget _title()
  {
    return const Text('Firebase AUth');
  }

  Widget _entryfield(String title,TextEditingController controller)
  {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText:title ),
    );

  }

  Widget _errormessage()
  {
    return Text(errormessage==''?'':'Humm ? $errormessage');
}


 Widget _submitButton()
 {
   return ElevatedButton(onPressed: isLogin ? signInWithEmailandPassword:createUserWithEmailandPassword,
       child:Text(isLogin ? 'Login':'Register') );
 }

 Widget loginOrRegistrationButton()
 {
   return TextButton(onPressed: (){

     setState(() {
       isLogin=!isLogin;
     });
   }, child:Text(isLogin?'Register Instead':'Login instead'));
 }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _title()),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.infinity,
          width:double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children:
            [
              _entryfield('email', _controllerEmail),
            _entryfield('password', _constrollerPassword),
              _errormessage(),
              _submitButton(),
              loginOrRegistrationButton()
            ],
          ),
        ),
      ),
    );
  }
}
