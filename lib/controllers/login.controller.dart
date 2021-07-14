
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mc_launcher/constants/routes.constants.dart';
import 'package:mc_launcher/models/user.model.dart';
import 'package:mc_launcher/services/mojang_api.service.dart';
import 'package:mc_launcher/services/user.service.dart';

class LoginController extends GetxController {

  UserService userService = Get.find();
  MojangAPIService mojangAPIService = Get.find();

  TextEditingController loginController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();

  @override
  void onReady() async {
    super.onReady();
  }

  Future<void> login() async {
    UserModel? userModel = await mojangAPIService.login(loginController.text.trim(), senhaController.text.trim());

    if(userModel == null) {
      return;
    }
    Get.offAndToNamed(RoutesConstants.LAUNCHER_HOME);
  }

}