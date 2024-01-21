import 'package:flutter/material.dart';
import 'package:login_page/Splash_Screen.dart';

import 'Dashboard.dart';
import 'Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: splashscreen(),

    );
  }
}
class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: Dashboard(), // Use the LoginPage as the home widget
    );
  }
}






