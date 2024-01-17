import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usercredential/controller/auth_controller.dart';
import 'package:usercredential/views/themes/app_colors.dart';
import 'package:usercredential/views/themes/app_text_style.dart';

import '../../utils/app_constants.dart';
import '../../widgets/app_circular_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<AuthController>(builder: (context, auth, child) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/person.jpg',
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(!auth.isSignIn ? 'Login' : 'Sign Up',
                    style: AppTextStyle.blackF20W700TextStyle),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: auth.emailController,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.emailAddress,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your email '),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: auth.passwordController,
                textAlign: TextAlign.left,
                obscureText: true,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password '),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: AppColors.blueColor,
                child: (auth.isLoading)
                    ? const AppCircularWidget()
                    : const Text('Submit',
                        style: AppTextStyle.whiteF14W600TextStyle),
                onPressed: () async {
                  final input = {
                    'email': auth.emailController.text,
                    'password': auth.passwordController.text
                  };

                  !auth.isSignIn
                      ? auth.signInWithEmailAndPassword(input, context)
                      : auth.signUpWithEmailAndPassword(input, context);
                },
              ),
              TextButton(
                  onPressed: () {
                    auth.changeSignUpIn();
                  },
                  child: Text(
                      !auth.isSignIn
                          ? 'New User?.Sign Up Here.!'
                          : 'Already SignUp, Login Here.!',
                      style: AppTextStyle.redF14W500TextStyle))
            ],
          ),
        );
      }),
    );
  }
}
