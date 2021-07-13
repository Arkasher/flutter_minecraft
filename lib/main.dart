import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:mc_launcher/constants/boxes_constants.dart';
import 'package:mc_launcher/controllers/loading.controller.dart';
import 'package:mc_launcher/repositories/preferences.repository.dart';
import 'package:mc_launcher/repositories/user.repository.dart';
import 'package:mc_launcher/services/mojang_api.service.dart';
import 'package:mc_launcher/services/user.service.dart';
import 'package:mc_launcher/views/main_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeBoxes();
  await initializeWindow();
  await initializePreferences();

  initializeServices();
  initializeRepositories();
  initializeControllers();

  runApp(MyApp());
}

Future<void> initializeBoxes() async {
  Hive.init((await getApplicationDocumentsDirectory()).path);
  Get.put(await Hive.openBox(BoxesConstants.USERS), tag: BoxesConstants.USERS);
}

void initializeRepositories() {
  Get.put(UserRepository());
  Get.put(PreferencesRepository());
}

void initializeServices() {
  Get.put(UserService());
  Get.put(MojangAPIService());
}

void initializeControllers() {
  Get.put(LoadingController());
}

Future<void> initializePreferences() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  Get.put(sharedPreferences);
}

Future<void> initializeWindow() async {

}
