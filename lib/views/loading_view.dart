import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mc_launcher/constants/image_constants.dart';
import 'package:mc_launcher/controllers/loading.controller.dart';
import 'package:mc_launcher/utils/image.util.dart';

import 'widgets/loading.widget.dart';

class LoadingView extends GetView<LoadingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: ImageUtil.fromAsset(ImageConstants.BACKGROUND_DIRT).image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey),
        child: LoadingWidget(),
      ),
    );
  }
}
