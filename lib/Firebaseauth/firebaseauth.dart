import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Auth
{
  final FirebaseAuth _firebaseauth=FirebaseAuth.instance;
User? get  currentuser=>_firebaseauth.currentUser;
Stream<User?>get authstatechanges=>_firebaseauth.authStateChanges();

Future<void>signinwithemailandpassword({required String email,required String password})async{
  await _firebaseauth.signInWithEmailAndPassword(email: email, password: password);
}

Future<void>createuserwithemailandpassword({required String email,required String password})async
{
  await _firebaseauth.createUserWithEmailAndPassword(email: email, password: password);
}

Future<void>signout()async{
  await _firebaseauth.signOut();
}
}


