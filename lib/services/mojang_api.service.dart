import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import 'package:mc_launcher/constants/mojang_api_constants.dart';
import 'package:mc_launcher/constants/preferences_constants.dart';
import 'package:mc_launcher/models/user.model.dart';
import 'package:mc_launcher/repositories/preferences.repository.dart';
import 'package:mc_launcher/repositories/user.repository.dart';
import 'package:mc_launcher/services/http.service.dart';


class MojangAPIService {

  Future<UserModel?> login(String username, String password) async {
    HttpService httpService = new HttpService(url: MojangAPIConstants.AUTH_API);

    Map body = {
      "agent": {"name": "Minecraft", "version": 1},
      "username": username,
      "password": password,
      "requestUser": true
    };

    http.Response? response = await httpService.post(MojangAPIConstants.LOGIN_ENDPOINT, body);

    if(response!.statusCode == 200) {
      UserModel user = UserModel.fromJson(jsonDecode(response.body));
      _storeInPreferences(user);
      return user;
    }
    return null;
  }

  void _storeInPreferences(UserModel user) {
    UserRepository userRepository = Get.find();
    userRepository.update(user.id, user);
    PreferencesRepository preferencesRepository = Get.find();
    preferencesRepository.setString(PreferencesConstants.ACCESS_TOKEN, user.accessToken);
    preferencesRepository.setString(PreferencesConstants.CLIENT_TOKEN, user.clientToken);
    preferencesRepository.setString(PreferencesConstants.USER_ID, user.id);
  }

}