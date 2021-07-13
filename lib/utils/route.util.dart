import 'package:flutter/cupertino.dart';
import 'package:mc_launcher/constants/routes.constants.dart';
import 'package:mc_launcher/views/launcher_view.dart';
import 'package:mc_launcher/views/loading_view.dart';
import 'package:mc_launcher/views/login_view.dart';

class RouteUtil {

  static Map<String, Widget Function(BuildContext)> routes = {
    RoutesConstants.LOADING: (context) => getWidget(LoadingView()),
    RoutesConstants.LOGIN: (context) => getWidget(LoginView()),
    RoutesConstants.LAUNCHER_HOME: (context) => getWidget(LauncherView())
  };

  static Widget getWidget(Widget child) {
    return WillPopScope(
      onWillPop: () async => false,
      child: child,
    );
  }

}