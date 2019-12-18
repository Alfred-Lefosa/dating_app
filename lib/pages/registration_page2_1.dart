import 'package:flutter/material.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';
import 'package:dating_app/app_constant_values/text_style_constants.dart';
import 'package:dating_app/app_constant_values/numerical_constants.dart';

class RegistrationPage21 extends StatefulWidget {
  RegistrationPage21({Key key, this.title}) : super(key: key);

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
  _RegistrationPage21State createState() => _RegistrationPage21State();
}

class _RegistrationPage21State extends State<RegistrationPage21>
    with SingleTickerProviderStateMixin {
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
            textAlign: TextAlign.center,
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
      child: ListView(
        padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
        children: <Widget>[
          SizedBox(height: 34),
          Text(
            'Resize Your Profile Picture',
            style: AppFonts.titleBlackFont,
            textAlign: TextAlign.center,
          ),
          Text(
            '(Use the crop tool to make your picture fit inside the box.)',
            style: AppFonts.italicBlackFont,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
//              image: DecorationImage(
//                image: ExactAssetImage('images/flowers.jpeg'),
//                fit: BoxFit.cover,
//              ),
              border: Border.all(
                color: AppColors.appAqua,
                width: 1.0,
              ),
            ),
          ),
          SizedBox(height: 20),
          IconButton(
            icon: Icon(Icons.photo_camera),
            iconSize: 60,
            onPressed: null,
            color: AppColors.appBlue100,
          ),
          Text(
            'Take a Picture',
            style: AppFonts.italicBlackFont,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          IconButton(
            icon: Icon(Icons.photo_library),
            iconSize: 60,
            onPressed: null,
            color: AppColors.appBlue100,
          ),
          Text(
            'Load from Gallery',
            style: AppFonts.italicBlackFont,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 220,
                height: 48.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/RegistrationPage3");
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
        ],
      ),
    );
  }
}

//TODO: Scale box ... for different screen sizes
