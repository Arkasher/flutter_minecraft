import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:mc_launcher/constants/boxes_constants.dart';
import 'package:mc_launcher/repositories/user.repository.dart';
import 'package:mc_launcher/views/main_view.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeBoxes();
  await initializeWindow();
  initializeRepositories();
  runApp(MyApp());
}

Future<void> initializeBoxes() async {
  Hive.init((await getApplicationDocumentsDirectory()).path);
  Get.put(await Hive.openBox(BoxesConstants.USERS), tag: BoxesConstants.USERS);
}

void initializeRepositories() {
  Get.put(UserRepository());
}

Future<void> initializeWindow() async {
  await DesktopWindow.setFullScreen(true);
}
