import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dodoled/sign_up_widget.dart';
import 'package:dodoled/logged_in_widget.dart';
import 'dart:developer';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.waiting){
          log('data: 1');
          return Center(child: CircularProgressIndicator());
        }else if (snapshot.hasData) {
          log('data: 2');
          return LoggedInWidget();
        }else if (snapshot.hasError){
          log('data: 3');
          return Center(child: Text('Something went wrong!'));
        } else {
          log('data: 4');
          return SignUpWidget();
        }
      }
    )
  );
}