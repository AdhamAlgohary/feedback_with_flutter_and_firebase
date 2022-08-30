import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTxt extends StatelessWidget {
  String? txt;
  TextStyle? textStyle;
  CustomTxt({Key? key, @required this.txt, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("$txt",style: textStyle,);
  }
}
