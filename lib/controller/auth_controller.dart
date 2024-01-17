import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:usercredential/models/user_model.dart';
import 'package:usercredential/utils/app_constants.dart';
import 'package:usercredential/utils/shared_pref.dart';
import 'package:usercredential/views/screens/home_screen.dart';

class AuthController with ChangeNotifier, DiagnosticableTreeMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _auth = FirebaseAuth.instance;
  bool isSignIn = false;
  bool isLoading = false;

  Future signUpWithEmailAndPassword(Map<String, dynamic> input, context) async {
    try {
      _loading(true);
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: input['email'],
        password: input['password'],
      );
      final user = userCredential.user;
      final userData = {
        'id': user?.uid,
        'user_name':
            user?.displayName ?? userCredential.additionalUserInfo?.username,
        'user_email': user?.email,
        'phone': user?.phoneNumber,
      };
      final userModel = UserModel.fromJson(userData);
      final isSuccess =
          await SharedPref.save(userConstant, jsonEncode(userModel.toJson()));
      if (isSuccess) {
        Navigator.pushAndRemoveUntil(
          context,
          CupertinoPageRoute(builder: (_) => const HomeScreen()),
          (__) => false,
        );
        removeAll();
      }
    } on FirebaseAuthException catch (e) {
      _handleAuthException(context, e);
    } catch (e) {
      _handleOtherException(context, e);
    }
  }

  Future signInWithEmailAndPassword(Map<String, dynamic> input, context) async {
    try {
      _loading(true);
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: input['email'],
        password: input['password'],
      );
      final user = userCredential.user;
      final userData = {
        'id': user?.uid,
        'user_name':
            user?.displayName ?? userCredential.additionalUserInfo?.username,
        'user_email': user?.email,
        'phone': user?.phoneNumber,
      };
      final userModel = UserModel.fromJson(userData);
      final isSuccess =
          await SharedPref.save(userConstant, jsonEncode(userModel.toJson()));
      if (isSuccess) {
        Navigator.pushAndRemoveUntil(
          context,
          CupertinoPageRoute(builder: (_) => const HomeScreen()),
          (__) => false,
        );
        removeAll();
      }
    } on FirebaseAuthException catch (e) {
      _handleAuthException(context, e);
    } catch (e) {
      _handleOtherException(context, e);
    }
  }

  Future signInWithGoogle(BuildContext context) async {
    try {
      _loading(true);
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      final user = userCredential.user;
      final userData = {
        'id': user?.uid,
        'user_name': user?.displayName ?? user?.email,
        'user_email': user?.email,
        'phone': user?.phoneNumber,
      };

      final userModel = UserModel.fromJson(userData);
      final isSuccess =
          await SharedPref.save(userConstant, jsonEncode(userModel.toJson()));

      if (isSuccess) {
        Navigator.pushAndRemoveUntil(
          context,
          CupertinoPageRoute(builder: (_) => const HomeScreen()),
          (__) => false,
        );
        removeAll();
      }
    } on FirebaseAuthException catch (e) {
      _handleAuthException(context, e);
    } catch (e) {
      _handleOtherException(context, e);
    }
  }

  void _loading(bool loading) {
    isLoading = loading;
    notifyListeners();
  }

  void changeSignUpIn() {
    isSignIn = !isSignIn;
    debugPrint('isSignIn $isSignIn');
    notifyListeners();
  }

  void removeAll() {
    emailController.clear();
    passwordController.clear();
    isLoading = false;
    isSignIn = false;
    notifyListeners();
  }

  void _handleAuthException(BuildContext context, FirebaseAuthException e) {
    _loading(false);
    if (e.code == 'weak-password') {
      toastMsg(context, 'The password provided is too weak.');
      debugPrint('The password provided is too weak. ${e.code}');
    } else if (e.code == 'email-already-in-use') {
      toastMsg(context, 'The account already exists for that email.');
      debugPrint('The account already exists for that email. ${e.code}');
    } else {
      // Handle other FirebaseAuthException cases
    }
  }

  void _handleOtherException(BuildContext context, dynamic e) {
    _loading(false);
    toastMsg(context, 'SignIn Failed. Please try again later.');
    debugPrint('exception $e');
  }
}

// HomeController and UserModel remain unchanged
