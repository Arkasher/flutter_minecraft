import 'package:mc_launcher/models/model.dart';

class UserModel extends Model {
  final String clientToken;
  final String accessToken;
  final String id;
  final String uuid;
  final String username;
  final String nickname;
  final List<dynamic> availableProfiles;

  UserModel(
      {required this.clientToken,
      required this.accessToken,
      required this.id,
      required this.uuid,
      required this.username,
      required this.nickname,
      required this.availableProfiles});

  Map<String, dynamic>? toJson() {
    Map<String, dynamic>? map = new Map();
    map["accessToken"] = accessToken;
    map["clientToken"] = clientToken;
    map["user"] = {"id": id, "username": username};
    map["selectedProfile"] = {"id": uuid, "name": nickname};
    map["availableProfiles"] = availableProfiles;

    return map;
  }

  factory UserModel.fromJson(var parsedJson) {
    return UserModel(
        accessToken: parsedJson["accessToken"],
        clientToken: parsedJson["clientToken"],
        username: parsedJson["user"]["username"],
        id: parsedJson["user"]["id"],
        uuid: parsedJson["selectedProfile"]["id"],
        nickname: parsedJson["selectedProfile"]["name"],
        availableProfiles: parsedJson["availableProfiles"]);
  }
}