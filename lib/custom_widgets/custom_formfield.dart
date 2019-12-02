import 'package:flutter/material.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';
import 'package:dating_app/app_constant_values/numerical_constants.dart';




/// A custom Formfield widget.
///
///used for text input with a customizable validation method
///
class CustomFormField extends StatefulWidget {

  ///[bordercolor] is a the color of the border of the input area. it set to appBlue100 by default
  final Color borderColor;

  ///[label] is the hint text displayed in the user input area
  final String label;

  ///[obscureText] specifies if the text should be vissible or hidden. For password fields, this value is true by default.
  bool obscureText;

  CustomFormField(
      {Key key, this.borderColor = AppColors.appBlue100, this.label = '', this.obscureText = false})
      : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {

  bool _showVisibilityIcon = false;
  String _text;


  // Toggles the input show status
  void _toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  String inputValidation(input) {
    String message = '';

    if((widget.label == 'Password')|| (widget.label == 'Confirm Password')){
      if(input.length >= 1 && input.length < AppConstants.minPasswordLength){
        message ='Password too short.';
      }
    }


    //TODO: Add other test statements...check country (if they exist) check email address (phone number), check...


    return (message != '' )? message : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor, width: 1.5)),
          hintText: widget.label,
          icon: _showVisibilityIcon
              ? GestureDetector(
                  onTap: _toggle,
                  child: widget.obscureText
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                )
              : null,
        ),
        validator: (val) => inputValidation(val),
        onSaved: (val) => _text = val,
        obscureText: widget.obscureText,
        textAlign: TextAlign.center,
        autovalidate: true,
      ),
    );
  }
}

//TODO: Add an animation to handle the visibility icon

