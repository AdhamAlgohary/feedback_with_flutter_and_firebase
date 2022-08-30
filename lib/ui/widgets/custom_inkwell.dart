import 'package:feedback_with_mvvm/ui/widgets/custom_txt.dart';
import 'package:feedback_with_mvvm/utilis/Constans.dart';
import 'package:flutter/material.dart';

class CustomInkwell extends StatelessWidget {
  final String txt;
  final void Function()? function;

  const CustomInkwell({Key? key, required this.txt, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CustomTxt(txt: txt,textStyle: style3,),
      onTap: function,
      
    );
  }
}
