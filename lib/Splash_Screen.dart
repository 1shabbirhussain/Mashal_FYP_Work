import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_page/Login.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.0, 0.0),
              radius: 1,
              colors: [
                Color.fromRGBO(36, 35, 35, 0.22),
                Color.fromRGBO(34, 255, 167, 0.3),
              ],
            ),
          ),

          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/wave.png',
                    height: 250,
                  )),
              Center(
                child: SizedBox(
                  width: 250, // Adjust the width to your desired size
                  height: 250, // Adjust the height to your desired size
                  child: Image.asset('assets/E-Active-removebg.png'),
                ),
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/wave2.png',
                    height: 250,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
