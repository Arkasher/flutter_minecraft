import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mc_launcher/utils/messages.dart';
import 'package:mc_launcher/utils/route.util.dart';

import 'loading_view.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Minecraft Launcher',
      translations: Messages(),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoadingView(),
      routes: RouteUtil.routes,
    );
  }
}
