import 'package:get/get.dart';
import 'package:mc_launcher/constants/preferences.constants.dart';
import 'package:mc_launcher/models/user.model.dart';
import 'package:mc_launcher/repositories/preferences.repository.dart';
import 'package:mc_launcher/repositories/user.repository.dart';

class UserService {
  Future<bool> isLogged() async {
    UserModel? loggedUser = await getLoggedUser();
    return loggedUser != null;
  }

  Future<UserModel?> getLoggedUser() async {
    UserRepository userRepository = Get.find();
    PreferencesRepository preferencesRepository = Get.find();
    String? userId = preferencesRepository.get(PreferencesConstants.USER_ID) as String?;

    return userRepository.get(userId);
  }
}
