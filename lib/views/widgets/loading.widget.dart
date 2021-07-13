import 'package:mc_launcher/constants/locale_constants.dart';
import 'package:mc_launcher/controllers/loading.controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LoadingWidget extends GetView<LoadingController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Get.height * 30 / 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleConstants.LOADING.tr,
                  style: TextStyle(
                      fontFamily: 'Minecraft',
                      fontSize: 100,
                      color: Colors.black)),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 100,
                child: Obx(() => Text(
                      controller.points.value,
                      style: TextStyle(
                          fontFamily: 'Minecraft',
                          fontSize: 100,
                          color: Colors.black),
                    )),
              )
            ],
          ),
          Obx(() => new LinearPercentIndicator(
            width: Get.width * 80 / 100,
            alignment: MainAxisAlignment.center,
            animation: true,
            animationDuration: 300,
            lineHeight: 100,
            percent: controller.actualProggress.value / 100,
            center: Text(controller.actualProggress.value.toString() + "%",
                style: TextStyle(
                    fontFamily: 'Minecraft',
                    fontSize: 40,
                    color: Colors.black)),
            linearStrokeCap: LinearStrokeCap.butt,
            progressColor: Colors.green,
          ))
        ],
      ),
    );
  }
}
