class UserService {
  Future<bool> isLogged() async {
    await Future.delayed(Duration(seconds: 5));
    return false;
  }
}
