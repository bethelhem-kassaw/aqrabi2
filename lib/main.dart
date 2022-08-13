import 'package:aqrabi2/src/screen/mycart.dart';
import 'package:aqrabi2/src/screen/view/datavisulize.dart';
import 'package:aqrabi2/src/screen/view/homescreen.dart';
import 'package:aqrabi2/src/screen/view/login.dart';
import 'package:aqrabi2/src/screen/view/signup.dart';
import 'package:aqrabi2/src/screen/view/signupchoose.dart';
import 'package:aqrabi2/src/screen/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}
