import 'package:feedback_with_mvvm/ui/widgets/custom_txt.dart';
import 'package:flutter/material.dart';

import '../../utilis/Constans.dart';

class RadioBtn extends StatefulWidget {
  String? txt1;
  String? txt2;
  RadioBtn({
    @required this.txt1,
    @required this.txt2,
    Key? key,
  }) : super(key: key);

  @override
  State<RadioBtn> createState() => _RadioBtnState(txt1: txt1, txt2: txt2);
}

class _RadioBtnState extends State<RadioBtn> {
  _RadioBtnState({@required this.txt1, @required this.txt2});
  String? txt1;
  String? txt2;

  String? opinion;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio<String?>(
              value: "Yes",
              groupValue: opinion,
              onChanged: (val) {
                setState(() {
                  opinion = val;
                  kdebugCheck(opinion);
                });
              },
            ),
            CustomTxt(txt: txt1),
          ],
        ),
        Row(
          children: [
            Radio<String?>(
              value: "No",
              groupValue: opinion,
              onChanged: (val) {
                setState(() {
                  opinion = val;
                  kdebugCheck(opinion);
                });
              },
            ),
            CustomTxt(txt: txt2),
          ],
        ),
      ],
    );
  }
}
