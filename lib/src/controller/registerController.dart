import 'dart:convert';

import 'package:aqrabi2/src/model/registerModel.dart';
import 'package:aqrabi2/src/screen/view/login.dart';
import 'package:aqrabi2/src/services/Apiservices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class RegisterController extends GetxController {
  TextEditingController firstnameTextcontroller = TextEditingController();
  TextEditingController lastnameTextcontroller = TextEditingController();
  TextEditingController passwordTextcontroller = TextEditingController();
  TextEditingController addressTextcontroller = TextEditingController();
  TextEditingController phonenumberTextcontroller = TextEditingController();

  void register() async {
    RegisterModel registerModel = RegisterModel(
      phonenumber: phonenumberTextcontroller.text,
      firstname: firstnameTextcontroller.text,
      lastname: lastnameTextcontroller.text,
      address: addressTextcontroller.text,
      password: passwordTextcontroller.text,
    );
    var response = await ApiServices.post(
        registerModelToJson(registerModel), "auth/registeruser");
    // print(response);

    var data = json.decode(response);

    if (data["message"] == "user registered") {
      Get.to(() => login());
    }
  }

  void registersupplier() async {
    RegisterModel registerModel = RegisterModel(
      phonenumber: phonenumberTextcontroller.text,
      firstname: firstnameTextcontroller.text,
      lastname: lastnameTextcontroller.text,
      address: addressTextcontroller.text,
      password: passwordTextcontroller.text,
    );
    var response = await ApiServices.post(
        registerModelToJson(registerModel), "auth/registersupplier");
    print(response);
    var data = json.decode(response);

    if (data["message"] == "supplier registered") {
      // await Get.snackbar("aqrabi", "successfully registerd login to your account !",snackPosition: SnackPosition.BOTTOM);
      Get.to(() => login());
    }
  }
}
