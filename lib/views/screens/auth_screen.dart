import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:usercredential/views/screens/login_screen.dart';
import 'package:usercredential/views/themes/app_text_style.dart';

import '../../controller/auth_controller.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController auth = AuthController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/person.jpg',
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    CupertinoPageRoute(builder: (_) => const LoginScreen()),
                    (__) => false);
              },
              child: const Text(
                'Email Sign In / Sign Up',
                style: AppTextStyle.blueF14W600TextStyle,
              ),
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     toastMsg(context, 'Comming soon');
            //   },
            //   child:https://dart.dev/diagnostics/undefined_identifier const Text(
            //     'Google Sign In',
            //     style: AppTextStyle.blueF14W600TextStyle,
            //   ),
            // ),
            ElevatedButton(
              onPressed: () async {
                await auth.signInWithGoogle(context);
              },
              child: const Text('Sign In with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
