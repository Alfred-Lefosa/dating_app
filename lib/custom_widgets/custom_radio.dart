
//TODO: Add documentation/ Explanation
//TODO: make value and groupvalue general

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';

class CustomRadioBtn extends StatefulWidget {
  final String label;
  final String value;
  final String groupValue;
  final double height;
  final double width;
  final Color color;

  final Function(String text) onChanged;


  bool get isChecked => (value == groupValue);

  CustomRadioBtn({
    this.label = 'Radio',
    @required this.value,
    @required this.groupValue,
    @required this.onChanged,
    this.height = 24,
    this.width = 24,
    this.color = AppColors.appBlue100,
  });

  @override
  _CustomRadioBtnState createState() => _CustomRadioBtnState();
}

class _CustomRadioBtnState extends State<CustomRadioBtn>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.onChanged(widget.value);
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
                shape: BoxShape.circle,
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
