import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'Dashboard/MainScreen/dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();
  bool _isPasswordVisible = false; // Track password visibility state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Add space
          Container(
            margin: EdgeInsets.only(top: 20), // Add space on top
            child: Center(
              child: Image.asset(
                'assets/3094352.jpg',
                // width: 150, // Adjust the width to your desired size
                height: 300, // Adjust the height to your desired size
              ),
            ),
          ),
          // Reduced space between logo and text
          Container(
            margin: EdgeInsets.only(top: 20), // Adjusted margin
            child: const Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 20, // Change the font size
                  color: Colors.black87, // Change the color
                  fontWeight: FontWeight.w700, // Add font weight
                  fontFamily: 'YourCustomFont', // Specify your custom font
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20), // Add space from left and right
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  //controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: Colors.black87),
                    //filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                    ),
                    prefixIcon: Icon(Icons.email_rounded),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10), // Adjusted margin
                  child: TextField(
                    //controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black87),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black87,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    obscureText: !_isPasswordVisible,
                  ),
                ),
                SizedBox(height: 10), // Add space
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(),
                      ),
                    );
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Color.fromRGBO(78, 169, 132, 1.0),
                    onPrimary: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 30,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(78, 169, 132, 1.0),
                ),
          ),
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Image.asset(
          //     'assets/wave.png',
          //     width: 150, // Adjust the width to your desired size
          //     height: 150, // Adjust the height to your desired size
          //   ),
          // ),
        ],
      ),
    );
  }
}
