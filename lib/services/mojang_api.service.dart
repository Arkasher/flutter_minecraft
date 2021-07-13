import 'dart:convert';

import 'package:http/http.dart';
import 'package:mc_launcher/constants/mojang_api_constants.dart';
import 'package:mc_launcher/models/user.model.dart';
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

    Response? response = await httpService.post(MojangAPIConstants.LOGIN_ENDPOINT, body);

    if(response!.statusCode == 200) {
      return UserModel.fromJson(jsonDecode(response.body));
    }
    return null;
  }

}