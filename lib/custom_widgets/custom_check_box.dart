//TODO: Add documentation/ Explanation
//TODO: make value and groupvalue general

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';

class CustomCheckBox extends StatefulWidget {
  final String label;
  final String value;
  final double height;
  final double width;
  final Color color;
  final bool isChecked;
  final Function(String text) onChanged;

  CustomCheckBox({
    this.label = 'CheckBox',
    @required this.value,
    @required this.onChanged,
    @ required this.isChecked,
    this.height = 24,
    this.width = 24,
    this.color = AppColors.appBlue100,

  });



  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if(widget.isChecked){
            widget.onChanged(null);
          }else{
            widget.onChanged(widget.value);
          }
        });
      },
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: widget.height,
              width: widget.width,
              decoration: BoxDecoration(
                color: widget.isChecked ? widget.color : Colors.transparent,
                border: Border.all(width: 2.0, color: widget.color),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Text(widget.label),
            )
          ],
        ),
      ),
    );
  }
}
