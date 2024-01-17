import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:usercredential/models/user_model.dart';
import 'package:usercredential/utils/app_constants.dart';
import 'package:usercredential/utils/shared_pref.dart';

class HomeController with ChangeNotifier, DiagnosticableTreeMixin {
  UserModel _userModel = UserModel();

  UserModel get userModel => _userModel;

  Future init() async {
    final user = await SharedPref.read(userConstant);
    if (user.isEmpty) return;
    _userModel = UserModel.fromJson(jsonDecode(user));
    notifyListeners();
  }

  Future singOut() async {
    await SharedPref.remove(userConstant);
  }
}
