import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './modelauth.dart';

class modelhomepage extends StatelessWidget {
  modelhomepage({Key? key}) : super(key: key);

  final User? user = Authone().user;

  Future<void> signout() async {
    await Authone().signout();
  }

  Widget _title() {
    return Text('FirebaseAuthentication');
  }

  Widget _userid() {
    return Text(user?.email ?? 'user email');
  }
  Widget SignoutButton()
  {
    return ElevatedButton(onPressed: (){}, child: Text('Sign Out'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: _title()),
      body: Container(
          height: double.infinity,
      width: double.infinity,
      child: Column(children: [
        _userid(),
        SignoutButton()],)),
    );
  }
}
