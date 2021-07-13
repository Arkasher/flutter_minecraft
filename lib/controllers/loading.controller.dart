import 'package:get/get.dart';
import 'package:mc_launcher/services/user.service.dart';

class LoadingController extends GetxController {

  UserService userService = Get.find();

  RxBool isLogged = new RxBool(false);

  @override
  void onReady() async {
    super.onReady();
    isLogged.value = await userService.isLogged();
  }

}