import 'package:flutter/material.dart';

import '../../utilis/Constans.dart';
import 'custom_txt.dart';
import 'radio_btn.dart';

// ignore: must_be_immutable
class CustomTxtAndRadioBtn extends StatelessWidget {
  String? txt1;
  String? txt2;
  String? txt;

  String? groupOpinion;

  CustomTxtAndRadioBtn({
    Key? key,
    @required this.txt1,
    @required this.txt2,
    @required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0.04 * width, 0.02 * height, 0, 0),
          child: CustomTxt(
            txt: txt,
            textStyle: style3,
          ),
        ),
        RadioBtn(
          txt1: txt1,
          txt2: txt2,
        ),
      ],
    );
  }
}
