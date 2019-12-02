import 'package:flutter/material.dart';
import 'package:dating_app/custom_widgets/custom_radio.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';
import 'package:dating_app/app_constant_values/text_style_constants.dart';
import 'package:dating_app/app_constant_values/numerical_constants.dart';
import 'package:dating_app/custom_widgets/custom_formfield.dart';

class RegistrationPage1 extends StatelessWidget {
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
      home: MyHomePage(title: 'LOGO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  String _radioValue;
  final _formKey = GlobalKey<FormState>();

  RadioBuilder<String, double> customBuilder;
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _radioValue = '';
    _controller =
        AnimationController(duration: Duration(milliseconds: 100), vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.ease);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _continueButton() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    Orientation screenOrientation  = MediaQuery.of(context).orientation;
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
            style: TextStyle(
                color: AppColors.appBlue100,
                fontFamily: 'StardustAdventure.ttf'),
          ),
        ),
      ),
      body: buildContent(screenOrientation),
    );
  }

  Widget buildContent(Orientation screenOrientation) {
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
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomFormField(
                    obscureText: false,
                    label: 'Last Name',
                    borderColor: AppColors.appBlue100,
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
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomFormField(
                    obscureText: false,
                    label: 'Month',
                    borderColor: AppColors.appBlue100,
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomFormField(
                    obscureText: false,
                    label: 'Year',
                    borderColor: AppColors.appBlue100,
                  ),
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
                CustomRadio<String, double>(
                    value: 'Female',
                    groupValue: _radioValue,
                    duration: Duration(milliseconds: 500),
                    animsBuilder: (AnimationController controller) => [
                          CurvedAnimation(
                              parent: controller, curve: Curves.ease)
                        ],
                    builder: radioBtnBuilder()),
                SizedBox(width: 30),
                CustomRadio<String, double>(
                    value: 'Male',
                    groupValue: _radioValue,
                    duration: Duration(milliseconds: 500),
                    animsBuilder: (AnimationController controller) => [
                          CurvedAnimation(
                              parent: controller, curve: Curves.ease)
                        ],
                    builder: radioBtnBuilder()),
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
                  ),
                ),
                SizedBox(width: 18),
                Expanded(
                  child: CustomFormField(
                    obscureText: false,
                    label: 'Country',
                    borderColor: AppColors.appBlue100,
                  ),
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
            ),
            SizedBox(height: 17),
            CustomFormField(
              obscureText: true,
              label: 'Password',
              borderColor: AppColors.appBlue100,
            ),
            SizedBox(height: 8),
            Text(
              '(password must be 8 characters or longer)',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 17),
            CustomFormField(
              obscureText: true,
              label: 'Confirm Password',
              borderColor: AppColors.appBlue100,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 220,
                  height: 48.0,
                  child: RaisedButton(
                    onPressed: _continueButton,
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

  RadioBuilder<String, double> radioBtnBuilder() {
    customBuilder = (BuildContext context, List<double> animValues,
        Function updateState, String value) {
      return GestureDetector(
          onTapDown: (TapDownDetails details) {
            setState(() {
              if (_controller.status != AnimationStatus.completed)
                _controller.forward();
            });
          },
          onTapUp: (TapUpDetails details) {
            setState(() {
              if (_controller.status != AnimationStatus.dismissed)
                _controller.reverse();
            });
          },
          onTap: () {
            setState(() {
              _radioValue = value;
            });
          },
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8.0),
                width: 28.0,
                height: 28.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 38.0 * _animation.value,
                      height: 38.0 * _animation.value,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor.withAlpha(40),
                      ),
                    ),
                    Container(
                      width: 38.0,
                      height: 38.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                            color: animValues[0] >= 0.5
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).hintColor,
                            width: 2.0),
                      ),
                    ),
                    Container(
                      width: 20.0 * animValues[0],
                      height: 20.0 * animValues[0],
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(value),
              )
            ],
          ));
    };
    return customBuilder;
  }
}

//TODO: add background images
//TODO: handle orientation change
//TODO: handle different screen sizes...
//TODO: change to date pickers
