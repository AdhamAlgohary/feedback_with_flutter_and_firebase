
import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  final void Function () function;
  final Icon icon;

  const CustomIconBtn({Key? key, required this.function, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: function, icon: icon);
  }
}