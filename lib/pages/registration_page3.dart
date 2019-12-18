import 'package:dating_app/custom_widgets/custom_check_box.dart';
import 'package:dating_app/custom_widgets/custom_formfield.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/custom_widgets/custom_radio.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';
import 'package:dating_app/app_constant_values/text_style_constants.dart';
import 'package:dating_app/app_constant_values/numerical_constants.dart';
import 'package:provider/provider.dart';
import 'package:dating_app/utils/user.dart';

class RegistrationPage3 extends StatefulWidget {
  RegistrationPage3({Key key, this.title}) : super(key: key);

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
  _RegistrationPage3State createState() => _RegistrationPage3State();
}

class _RegistrationPage3State extends State<RegistrationPage3>
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
      child: ListView(
        padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
        children: <Widget>[
          SizedBox(height: 34),
          Text(
            'More About You',
            style: AppFonts.titleBlackFont,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
//          Text(
//            'Education Level',
//            style: AppFonts.titleRedFont,
//            textAlign: TextAlign.start,
//          ),
//          Padding(
//            padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Row(
//                  children: <Widget>[
//                    Radio(
//                      value: 'Basic Education',
//                      groupValue: user.getUserEducation,
//                      activeColor: AppColors.appBlue100,
//                      onChanged: (value) {
//                        setState(() {
//                          user.setUserEducation(value);
//                        });
//                      },
//                    ),
//                    SizedBox(width: 5),
//                    Text('Basic Education'),
//                  ],
//                ),
//                Row(
//                  children: <Widget>[
//                    Radio(
//                      value: 'Completed High School',
//                      groupValue: user.getUserEducation,
//                      activeColor: AppColors.appBlue100,
//                      onChanged: (value) {
//                        setState(() {
//                          user.setUserEducation(value);
//                        });
//                      },
//                    ),
//                    SizedBox(width: 5),
//                    Text('Completed High School'),
//                  ],
//                ),
//                Row(
//                  children: <Widget>[
//                    Radio(
//                      value: 'Completed University, First Degree',
//                      groupValue: user.getUserEducation,
//                      activeColor: AppColors.appBlue100,
//                      onChanged: (value) {
//                        setState(() {
//                          user.setUserEducation(value);
//                        });
//                      },
//                    ),
//                    SizedBox(width: 5),
//                    Text('Completed University, First Degree'),
//                  ],
//                ),
//                Row(
//                  children: <Widget>[
//                    Radio(
//                      value: 'Postgraduate Degree',
//                      groupValue: user.getUserEducation,
//                      activeColor: AppColors.appBlue100,
//                      onChanged: (value) {
//                        setState(() {
//                          user.setUserEducation(value);
//                        });
//                      },
//                    ),
//                    SizedBox(width: 5),
//                    Text('Postgraduate Degree'),
//                  ],
//                ),
//                Row(
//                  children: <Widget>[
//                    IconButton(
//                      icon: Icon(Icons.add),
//                      onPressed: () {},
//                    ),
//                    Text('Own Words'),
//                  ],
//                ),
//              ],
//            ),
//          ),
//          SizedBox(height: 50),
//          Text(
//            'Occupation',
//            style: AppFonts.titleRedFont,
//            textAlign: TextAlign.start,
//          ),
//          CustomFormField(
//            obscureText: false,
//            label: 'Type your occupation here.',
//            borderColor: AppColors.appBlue100,
//            onChanged: (value) {
//              user.setUserOccupation(value);
//            },
//          ),
//          SizedBox(height: 50),
          Text(
            'Interested In',
            style: AppFonts.titleRedFont,
            textAlign: TextAlign.start,
          ),
          Row(
            children: <Widget>[
              CustomCheckBox(
                value: 'Women',
                label: 'Women',
                isChecked: user.getUserInterestedIn["Women"] == "Women",
                onChanged: (value) {
                  setState(() {
                    user.setUserInterestedIn("Women", value);
                  });
                },
              ),
              SizedBox(width: 30),
              CustomCheckBox(
                value: 'Men',
                label: 'Men',
                isChecked: user.getUserInterestedIn["Men"] == "Men",
                onChanged: (value) {
                  setState(() {
                    user.setUserInterestedIn("Men", value);
                  });
                },
              )
            ],
          ),
          SizedBox(height: 50),
          Text(
            'Looking For',
            style: AppFonts.titleRedFont,
            textAlign: TextAlign.start,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomCheckBox(
                  value: 'Short-term Dating',
                  label: 'Short-term Dating',
                  isChecked: user.getUserLookingFor["Short-term Dating"] ==
                      "Short-term Dating",
                  onChanged: (value) {
                    setState(() {
                      user.setUserLookingFor("Short-term Dating", value);
                    });
                  },
                ),
                CustomCheckBox(
                  value: 'Long-term Relationship',
                  label: 'Long-term Relationship',
                  isChecked: user.getUserLookingFor["Long-term Relationship"] ==
                      "Long-term Relationship",
                  onChanged: (value) {
                    setState(() {
                      user.setUserLookingFor("Long-term Relationship", value);
                    });
                  },
                ),
                CustomCheckBox(
                  value: 'Open to Anything',
                  label: 'Open to Anything',
                  isChecked: user.getUserLookingFor["Open to Anything"] ==
                      'Open to Anything',
                  onChanged: (value) {
                    user.setUserLookingFor("Open to Anything", value);
                  },
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    ),
                    Text('Own Words'),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  'Marital Status and Children',
                  style: AppFonts.titleRedFont,
                  textAlign: TextAlign.start,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 8.0, 0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomRadioBtn(
                        value: 'Single',
                        label: 'Single',
                        groupValue: user.getUserMaritalStatus,
                        onChanged: (value) {
                          setState(() {
                            user.setUserMaritalStatus(value);
                          });
                        },
                      ),
                      CustomRadioBtn(
                        value: 'Seperated',
                        label: 'Seperated',
                        groupValue: user.getUserMaritalStatus,
                        onChanged: (value) {
                          setState(() {
                            user.setUserMaritalStatus(value);
                          });
                        },
                      ),
                      CustomRadioBtn(
                        value: 'Divorced',
                        label: 'Divorced',
                        groupValue: user.getUserMaritalStatus,
                        onChanged: (value) {
                          setState(() {
                            user.setUserMaritalStatus(value);
                          });
                        },
                      ),
                      CustomRadioBtn(
                        value: 'In an Open Relationship',
                        label: 'In an Open Relationship',
                        groupValue: user.getUserMaritalStatus,
                        onChanged: (value) {
                          setState(() {
                            user.setUserMaritalStatus(value);
                          });
                        },
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {},
                          ),
                          Text('Own Words'),
                        ],
                      ),
                      CustomFormField(
                        obscureText: false,
                        label: 'Number of Children',
                        borderColor: AppColors.appBlue100,
                        onChanged: (value) {
                          user.setUserNumberOfChildren(int.parse(value));
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
                                Navigator.of(context)
                                    .pushNamed("/RegistrationPage4");
                              },
                              color: AppColors.appBlue100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppConstants.btnBorderRadius),
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
//                      Text(
//                        'Lifestyle',
//                        style: AppFonts.titleRedFont,
//                        textAlign: TextAlign.start,
//                      ),
//                      SizedBox(height: 20),
//                      Text('Drinking'),
//                      Padding(
//                        padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 5.0),
//                        child: Column(
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Never',
//                                  groupValue: user.getUserLifestyle["Drinking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Drinking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Never'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Occasionally',
//                                  groupValue: user.getUserLifestyle["Drinking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Drinking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Occasionally'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'A Few Times a Month',
//                                  groupValue: user.getUserLifestyle["Drinking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Drinking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('A Few Times a Month'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'A Few Times a Week',
//                                  groupValue: user.getUserLifestyle["Drinking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Drinking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('A Few Times a Week'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Daily',
//                                  groupValue: user.getUserLifestyle["Drinking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Drinking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Daily'),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                      SizedBox(height: 40),
//                      Text('Smoking'),
//                      Padding(
//                        padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 5.0),
//                        child: Column(
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Never',
//                                  groupValue: user.getUserLifestyle["Smoking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Smoking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Never'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Occasionally',
//                                  groupValue: user.getUserLifestyle["Smoking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Smoking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Occasionally'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'A Few Times a Month',
//                                  groupValue: user.getUserLifestyle["Smoking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Smoking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('A Few Times a Month'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'A Few Times a Week',
//                                  groupValue: user.getUserLifestyle["Smoking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Smoking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('A Few Times a Week'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Daily',
//                                  groupValue: user.getUserLifestyle["Smoking"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Smoking", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Daily'),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                      SizedBox(height: 40),
//                      Text('Exercise'),
//                      Padding(
//                        padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 5.0),
//                        child: Column(
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Never',
//                                  groupValue: user.getUserLifestyle["Exercise"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Exercise", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Never'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Rarely',
//                                  groupValue: user.getUserLifestyle["Exercise"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Exercise", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Rarely'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'A Few Times a Month',
//                                  groupValue: user.getUserLifestyle["Exercise"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Exercise", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('A Few Times a Month'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'A Few Times a Week',
//                                  groupValue: user.getUserLifestyle["Exercise"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Exercise", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('A Few Times a Week'),
//                              ],
//                            ),
//                            Row(
//                              children: <Widget>[
//                                Radio(
//                                  value: 'Daily',
//                                  groupValue: user.getUserLifestyle["Exercise"],
//                                  activeColor: AppColors.appBlue100,
//                                  onChanged: (value) {
//                                    setState(() {
//                                      user.setUserLifestyle("Exercise", value);
//                                    });
//                                  },
//                                ),
//                                SizedBox(width: 30),
//                                Text('Daily'),
//                              ],
//                            ),
//                          ],
//                        ),
//                      ),
//                      SizedBox(height: 40),
//                      Text('Indoors or Outdoors'),
//                      Text('Which one do you prefer? You can choose both.',
//                      style: AppFonts.italicBlackFont,),
//                      Row(
//                        children: <Widget>[
//                          CustomCheckBox(
//                            value: 'Indoors',
//                            label: 'Indoors',
//                            onChanged: (value) {
//                              setState(() {
//                                user.setUserLifestyle("Indoors", value);
//                              });
//                            },
//                          ),
//                          CustomCheckBox(
//                            value: 'Oudoors',
//                            label: 'Outdoors',
//                            onChanged: (value) {
//                              setState(() {
//                                user.setUserLifestyle("Outdoors", value);
//                              });
//                            },
//                          ),
//
//                        ],
//                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//TODO: Scale box ... for different screen sizes
//TODO: modify + (add more icon) color and size
