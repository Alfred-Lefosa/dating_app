import 'package:flutter/material.dart';
import 'package:dating_app/custom_widgets/custom_radio.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';
import 'package:dating_app/app_constant_values/text_style_constants.dart';
import 'package:dating_app/app_constant_values/numerical_constants.dart';
import 'package:dating_app/custom_widgets/custom_formfield.dart';
import 'package:provider/provider.dart';
import 'package:dating_app/utils/user.dart';

class RegistrationPage1 extends StatefulWidget {
  RegistrationPage1({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  //TODO: make fields in all class that extend statefulWidget final

  final String title;

  @override
  _RegistrationPage1State createState() => _RegistrationPage1State();
}

class _RegistrationPage1State extends State<RegistrationPage1>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    Orientation screenOrientation = MediaQuery.of(context).orientation;
    final user = Provider.of<User>(context);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Text(
            widget.title,
            //TODO: center logo in all pages/screens
            style: TextStyle(
                color: AppColors.appBlue100,
                fontFamily: 'StardustAdventure.ttf'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: buildContent(user),
    );
  }

  Widget buildContent(User user) {
    return Container(
      color: Colors.white,
//        decoration: BoxDecoration(
//          image: DecorationImage(
//            image: AssetImage("assets/Untitled.jpg"),
//            fit: BoxFit.cover,
//          ),
//        ),
      child: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
          children: <Widget>[
            SizedBox(height: 34),
            Text(
              'Registration Information',
              style: AppFonts.titleBlackFont,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            RichText(
              text: TextSpan(
                text: 'Names',
                style: AppFonts.titleRedFont,
                children: [
                  TextSpan(
                    text: '(as they appear on your ID Document)',
                    style: AppFonts.italicBlackFont,
                  ),
                ],
              ),
            ),
            SizedBox(height: 17),
            Row(
              children: <Widget>[
                Expanded(
                  child: CustomFormField(
                    obscureText: false,
                    label: 'First Name',
                    borderColor: AppColors.appBlue100,
                    onChanged: (value) {
                      user.setFirstName(value);
                    },
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomFormField(
                    obscureText: false,
                    label: 'Last Name',
                    borderColor: AppColors.appBlue100,
                    onChanged: (value) {
                      user.setLastName(value);
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            RichText(
                text: TextSpan(
                    text: 'Date of Birth',
                    style: AppFonts.titleRedFont,
                    children: [
                  TextSpan(
                    text: '(18 years of age or older)',
                    style: AppFonts.italicBlackFont,
                  )
                ])),
            SizedBox(height: 17),
            Row(
              children: <Widget>[
                Expanded(
                  child: CustomFormField(
                    obscureText: false,
                    label: 'Day',
                    borderColor: AppColors.appBlue100,
                    onChanged: (value) {
                      user.userProfile.dob["Day"] = int.parse(value);
                    },
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomFormField(
                      obscureText: false,
                      label: 'Month',
                      borderColor: AppColors.appBlue100,
                      onChanged: (value) {
                        user.userProfile.dob["Month"] = int.parse(value);
                      }),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomFormField(
                      obscureText: false,
                      label: 'Year',
                      borderColor: AppColors.appBlue100,
                      onChanged: (value) {
                        user.userProfile.dob["Year"] = int.parse(value);
                      }),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Gender',
              style: AppFonts.titleRedFont,
            ),
            SizedBox(height: 17),
            Row(
              children: <Widget>[
                CustomRadioBtn(
                  value: 'Female',
                  label: 'Female',
                  groupValue: user.getUserGender,
                  onChanged: (value) {
                    setState(() {
                      user.setGender(value);
                    });
                  },
                ),
                CustomRadioBtn(
                  value: 'Male',
                  label: 'Male',
                  groupValue: user.getUserGender,
                  onChanged: (value) {
                    setState(() {
                      user.setGender(value);
                    });
                  },
                ),

              ],
            ),
            SizedBox(height: 40),
            Text(
              'Location',
              style: AppFonts.titleRedFont,
            ),
            SizedBox(height: 17),
            Row(
              children: <Widget>[
                Expanded(
                  child: CustomFormField(
                    obscureText: false,
                    label: 'City',
                    borderColor: AppColors.appBlue100,
                    onChanged: (value) {
                      user.setCity(value);
                    },
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomFormField(
                      obscureText: false,
                      label: 'Country',
                      borderColor: AppColors.appBlue100,
                      onChanged: (value) {
                        user.setCountry(value);
                      }),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Contact',
              style: AppFonts.titleRedFont,
            ),
            SizedBox(height: 17),
            CustomFormField(
              obscureText: false,
              label: 'Email Address/Phone Number',
              borderColor: AppColors.appBlue100,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                user.setContact(value);
              },
            ),
            SizedBox(height: 50),
            Text(
              'Display Name',
              style: AppFonts.titleRedFont,
            ),
            SizedBox(height: 17),
            CustomFormField(
              obscureText: false,
              label: 'Set Preffered Display Name',
              borderColor: AppColors.appBlue100,
              onChanged: (value) {
                user.setDisplayName(value);
              },
            ),
            SizedBox(height: 50),

            Text(
              'Login',
              style: AppFonts.titleRedFont,
            ),
            CustomFormField(
              obscureText: false,
              label: 'Username',
              borderColor: AppColors.appBlue100,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                user.setUsername(value);
              },
            ),
            SizedBox(height: 17),
            CustomFormField(
              obscureText: true,
              label: 'Password',
              borderColor: AppColors.appBlue100,
              onChanged: (value) {
                user.setPassword(value);
              },
            ),
            SizedBox(height: 8),
            Text(
              '(password must be 8 characters or longer)',
              textAlign: TextAlign.center,
              style: AppFonts.italicBlackFont,
            ),
            SizedBox(height: 17),
            CustomFormField(
              obscureText: true,
              label: 'Confirm Password',
              borderColor: AppColors.appBlue100,
              onChanged: (value) {
                if (value == user.getUserPassword) {
                  user.setPassword(value);
                }
              },
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 48.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/RegistrationPage2_0");
                    },
                    color: AppColors.appBlue100,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppConstants.btnBorderRadius),
                    ),
                    child: Text(
                      'Continue',
                      style: AppFonts.titleWhiteFont,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

//TODO: add background images
//TODO: handle orientation change
//TODO: handle different screen sizes...
//TODO: change to date pickers
