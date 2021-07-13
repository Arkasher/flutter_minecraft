import 'package:flutter/cupertino.dart';
import 'package:mc_launcher/constants/routes.constants.dart';
import 'package:mc_launcher/views/loading_view.dart';
import 'package:mc_launcher/views/login_view.dart';

class RouteUtil {

  static Map<String, Widget Function(BuildContext)> routes = {
    RoutesConstants.LOADING: (context) => LoadingView(),
    RoutesConstants.LOGIN: (context) => LoginView()
  };

}