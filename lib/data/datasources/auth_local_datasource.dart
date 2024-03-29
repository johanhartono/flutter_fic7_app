import 'package:shared_preferences/shared_preferences.dart';

import '../models/auth_response_model.dart';



class AuthLocalDatasource {
  Future<bool> saveAuthData(AuthResponseModel model) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final result = await pref.setString('auth', model.toJson());
    return result;
  }

  Future<String> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    final authModel = AuthResponseModel.fromJson(authJson);
    return authModel.jwtToken;
  }
}
