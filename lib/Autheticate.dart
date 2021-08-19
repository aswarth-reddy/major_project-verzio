import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:major_project/home.dart';
import 'package:major_project/login.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return home();
    } else {
      return LoginScreen();
    }
  }
}
