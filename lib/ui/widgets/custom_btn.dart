import 'package:feedback_with_mvvm/firebase/auth/email-and-pass/email_and_password.dart';
import 'package:feedback_with_mvvm/ui/screen/mobile-screen/custom-session-screen/custom_session_screen.dart';
import 'package:feedback_with_mvvm/ui/screen/mobile-screen/login-screen/login_screen.dart';
import 'package:feedback_with_mvvm/utilis/Constans.dart';
import 'package:flutter/material.dart';
import 'package:feedback_with_mvvm/view-model/product_view_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CustomBtn extends StatelessWidget {
  String? txt;
  Color? color;
  Color? txtColor;
  double? height;
  final void Function()? function;

  CustomBtn({
    Key? key,
    @required this.color,
    @required this.txt,
    @required this.txtColor,
    @required this.height,
    @required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: MaterialButton(
        onPressed: function,
        child: Text('$txt'),
        color: color,
        textColor: txtColor,
        height: height,
      ),
    );
  }
}
