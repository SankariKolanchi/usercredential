import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:usercredential/controller/home_controller.dart';
import 'package:usercredential/views/screens/login_screen.dart';
import 'package:usercredential/views/themes/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeController>(builder: (context, homeCtrl, child) {
        homeCtrl.init();
        final userModel = homeCtrl.userModel;
        return Center(
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
              Text(
                'Hello Welcome : ${userModel.userName ?? userModel.userEmail} !',
                style: AppTextStyle.titleTextStyle,
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  await homeCtrl.singOut();
                  // ignore: use_build_context_synchronously
                  Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                      (route) => false);
                },
                child: const Text(
                  'Sign Out',
                  style: AppTextStyle.redF14W500TextStyle,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
