import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      checkAuthenticationStatus();
    });
  }

  void checkAuthenticationStatus() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      navigateToAuthScreen();
    } else {
      navigateToHomeScreen(user);
    }
  }

  void navigateToAuthScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => AuthScreen()),
    );
  }

  void navigateToHomeScreen(User user) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen(user: user)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
