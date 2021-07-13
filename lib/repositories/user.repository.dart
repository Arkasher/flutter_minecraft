import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:mc_launcher/constants/boxes_constants.dart';
import 'package:mc_launcher/models/user.model.dart';
import 'package:mc_launcher/repositories/repository.dart';

class UserRepository extends Repository<UserModel> {

  Box box = Get.find(tag: BoxesConstants.USERS);

  @override
  Future<void> delete(var primaryKey) async {
    await box.delete(primaryKey);
  }

  @override
  UserModel get(var primaryKey) {
    return UserModel.fromJson(box.get(primaryKey, defaultValue: null));
  }

  @override
  Future<UserModel> save(UserModel model) async {
    await box.put(model.id, model.toJson());
    return model;
  }

  @override
  Future<UserModel> update(var primaryKey, UserModel model) async {
    await delete(primaryKey);
    await save(model);
    return model;
  }



}