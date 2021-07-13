import 'dart:async';

import 'package:get/get.dart';
import 'package:mc_launcher/services/user.service.dart';

class LoadingController extends GetxController {

  UserService userService = Get.find();

  RxBool isLogged = new RxBool(false);
  
  RxString points = new RxString("...");

  RxInt actualProggress = new RxInt(0);

  late Timer timer;

  @override
  void onReady() async {
    super.onReady();
    startPointTasks();
    startLoading();
  }

  Future<void> startLoading() async {
    isLogged.value = await userService.isLogged();
    actualProggress.value = 100;
  }

  void startPointTasks() {
    timer = new Timer.periodic(Duration(milliseconds: 700), (Timer timer) {
      String pts = points.value;
      if(pts.length == 1) {
        points.value = "..";
        return;
      }
      if(pts.length == 2) {
        points.value = "...";
        return;
      }
      if(pts.length == 3) {
        points.value = ".";
        return;
      }
    });
  }

}