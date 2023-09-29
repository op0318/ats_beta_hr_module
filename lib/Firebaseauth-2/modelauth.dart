import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Authone
{
  final FirebaseAuth fireauth=FirebaseAuth.instance;
 User? get user=>fireauth.currentUser;
 Stream<User?> get Authstatechange=>fireauth.authStateChanges();

 Future<void>signinwithemalandpassword({required String email,required String password})async
  {
    await fireauth.signInWithEmailAndPassword(email: email, password: password);

}
Future<void>createuserwithemailandpassword({required String email,required String password})async
{
await fireauth.createUserWithEmailAndPassword(email: email, password: password);

}

Future<void>signout()async
  {
    await fireauth.signOut();
  }


}
