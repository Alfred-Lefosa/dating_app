import 'package:dating_app/pages/registration_page2_1.dart' as prefix0;
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:dating_app/utils/user.dart';

import 'package:dating_app/pages/registration_page1.dart';
import 'package:dating_app/pages/registration_page2_0.dart';
import 'package:dating_app/pages/registration_page2_1.dart';
import 'package:dating_app/pages/registration_page3.dart';
import 'package:dating_app/pages/registration_page4.dart';
import 'package:dating_app/pages/registration_page5.dart';
import 'package:dating_app/pages/registration_page6.dart';
import 'package:dating_app/pages/registration_page7.dart';
import 'package:dating_app/media/camera_widget.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';

void main() {
  runApp(DatingApp());
}

class DatingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Registration',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: AppColors.appThemeColor,
        ),
        home: ChangeNotifierProvider<User>(
          builder: (_) => User(),
          child: RegistrationPage1(title: 'LOGO'),
        ),
        routes: <String, WidgetBuilder>{
          "/RegistrationPage2_0": (BuildContext context) => RegistrationPage20(
                title: 'LOGO',
              ),
          "/RegistrationPage2_1": (BuildContext context) => RegistrationPage21(
                title: 'LOGO',
              ),
          "/RegistrationPage3": (BuildContext context) =>
              ChangeNotifierProvider<User>(
                builder: (_) => User(),
                child: RegistrationPage3(
                  title: 'LOGO',
                ),
              ),
          "/RegistrationPage4": (BuildContext context) =>
              ChangeNotifierProvider<User>(
                builder: (_) => User(),
                child: RegistrationPage4(
                  title: 'LOGO',
                ),
              ),
          "/RegistrationPage5": (BuildContext context) =>
              ChangeNotifierProvider<User>(
                builder: (_) => User(),
                child: RegistrationPage5(
                  title: 'LOGO',
                ),
              ),
          "/RegistrationPage6": (BuildContext context) =>
              ChangeNotifierProvider<User>(
                builder: (_) => User(),
                child: RegistrationPage6(
                  title: 'LOGO',
                ),
              ),
          "/RegistrationPage7": (BuildContext context) =>
              ChangeNotifierProvider<User>(
                builder: (_) => User(),
                child: RegistrationPage7(
                  title: 'LOGO',
                ),
              ),
          "/takeAPicture": (BuildContext context) =>
              ChangeNotifierProvider<User>(
                builder: (_) => User(),
                child: CameraWidget(),
              ),
        });
  }
}
