import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mc_launcher/constants/image.constants.dart';
import 'package:mc_launcher/constants/locale_constants.dart';
import 'package:mc_launcher/controllers/login.controller.dart';
import 'package:mc_launcher/utils/image.util.dart';

import 'widgets/button.widget.dart';
import 'widgets/edited_behavior.widget.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: ImageUtil.fromAsset(ImageConstants.BACKGROUND_LOGIN).image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey),
        child: ScrollConfiguration(
          behavior: EditedBehaviorWidget(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: ImageUtil.fromAsset(ImageConstants.LOGO),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: Get.width * 15 / 100),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: controller.loginController,
                        textInputAction: TextInputAction.done,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: LocaleConstants.LOGIN.tr,
                          labelStyle: TextStyle(color: Colors.black),
                          hintStyle: TextStyle(color: Colors.black),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: Get.width * 15 / 100),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: controller.senhaController,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        textAlign: TextAlign.left,
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.black,
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: LocaleConstants.PASSWORD.tr,
                          labelStyle: TextStyle(color: Colors.black),
                          hintStyle: TextStyle(color: Colors.black),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: Get.width * 30 / 100),
                  constraints: BoxConstraints.expand(height: 50),
                  child: ButtonWidget(
                    text: LocaleConstants.SIGN_IN.tr,
                    execute: controller.login,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
