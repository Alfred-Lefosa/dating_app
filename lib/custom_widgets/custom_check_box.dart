//TODO: add the implement the onchanged resposnce...
//TODO: make default color appblue100
//TODO: Make other necessary modifications
//TODO: Add documentation/ Explanation

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';

class CustomCheckBox<T> extends StatefulWidget {
  final String label;
  final T value;
  final double height;
  final double width;
  final Color color;
  final double cornerRadius;
  bool state;

  CustomCheckBox({
    this.label = 'Radio',
    @required this.value,
    @required this.onChanged,
    this.height = 24,
    this.width = 24,
    this.cornerRadius = 0.0,
    this.color = AppColors.appBlue100,
    this.state = false,
  });

  final ValueChanged<T> onChanged;



  @override
  _CustomCheckBoxState<T> createState() => _CustomCheckBoxState<T>();
}

class _CustomCheckBoxState<T> extends State<CustomCheckBox<T>>
    with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.state = !widget.state;
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
                  color: widget.state ? widget.color : Colors.transparent,
                  border: Border.all(width: 2.0, color: widget.color),
                  borderRadius:
                      BorderRadius.all(Radius.circular(widget.cornerRadius))),
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

//TODO: use theme data to set default color
//TODO: add ischecked variable to checkbox,
