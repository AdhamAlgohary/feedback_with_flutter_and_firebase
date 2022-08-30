import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  CustomDivider({Key? key, @required this.height,@required this.color}) : super(key: key);
  double? height;
  Color ? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color:color,
    );
  }
}
