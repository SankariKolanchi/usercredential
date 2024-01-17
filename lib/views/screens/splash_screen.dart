import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usercredential/models/user_model.dart';
import 'package:usercredential/utils/app_constants.dart';
import 'package:usercredential/utils/shared_pref.dart';
import 'package:usercredential/views/themes/app_colors.dart';
import 'package:usercredential/widgets/app_circular_widgets.dart';

import 'auth_screen.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      checkAuthenticationStatus();
    });
  }

  void checkAuthenticationStatus() async {
    final user = await SharedPref.read(userConstant);
    debugPrint('user $user.');
    if (user == '') return navigateToAuthScreen();

    final userModel = UserModel.fromJson(jsonDecode(user));
    if (userModel.id == null) return navigateToAuthScreen();

    return navigateToHomeScreen();
  }

  void navigateToAuthScreen() {
    Navigator.pushAndRemoveUntil(
        context,
        CupertinoPageRoute(builder: (context) => const AuthScreen()),
        (__) => false);
  }

  void navigateToHomeScreen() {
    Navigator.pushAndRemoveUntil(context,
        CupertinoPageRoute(builder: (_) => const HomeScreen()), (__) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/person.jpg',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 15),
            const AppCircularWidget(color: AppColors.blueColor),
          ],
        ),
      ),
    );
  }
}
