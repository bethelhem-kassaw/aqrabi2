import 'dart:convert';
import 'package:aqrabi2/src/screen/view/adminui.dart';
import 'package:aqrabi2/src/screen/view/supplierui.dart';
import 'package:aqrabi2/src/screen/view/userui.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:aqrabi2/src/model/loginModel.dart';
import 'package:aqrabi2/src/services/Apiservices.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class LoginController extends GetxController {
  TextEditingController phonenumberEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  void login() async {
    LoginModel loginModel = LoginModel(
        phonenumber: phonenumberEditingController.text,
        password: passwordEditingController.text);
    var response =
        await ApiServices.post(loginModelToJson(loginModel), "auth/login");

    /// Printing the response to the console.
    // print(response);

    var data = json.decode(response);
    // print(data["data"]['role']);
    if (data["data"]['role'] == "user") {
      Get.to(()=>userui());
    }else if(data["data"]['role'] == "supplier"){
 Get.to(()=>supplierui());
    }else if(data["data"]['role'] == "Admin"){
      Get.to(()=>adminui());
    }
  }
}
