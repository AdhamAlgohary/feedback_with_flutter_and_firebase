import 'package:feedback_with_mvvm/ui/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

import '../../../../firebase/auth/email-and-pass/email_and_password.dart';
import '../../../../utilis/Constans.dart';
import '../../../widgets/custom_divider.dart';
import '../../../widgets/custom_txt_form_field.dart';


class SignUpScreen extends StatelessWidget {
  static TextEditingController textEditingController1 = TextEditingController();
  static TextEditingController textEditingController2 = TextEditingController();

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(children: [
      Container(
        child: Center(child: Image.asset('images/splash.png')),
        margin: EdgeInsets.all(0.05 * height),
      ),
      Center(
        child: Text(
          "Signup",
          style: style1,
        ),
      ),
      CustomDivider(
        height: 0.07 * height,
        color: Colors.white,
      ),
      // ignore: missing_required_param
      const CustomTxtFormField(
        hintText: 'Name',
        maxLines: 1, oScure: false,
      ),

      CustomDivider(
        height: 0.01 * height,
        color: Colors.white,
      ),

      // ignore: missing_required_param
      const CustomTxtFormField(
        hintText: 'Last Name',
        maxLines: 1, oScure: false,
      ),

      CustomDivider(
        height: 0.01 * height,
        color: Colors.white,
      ),
      CustomTxtFormField(
        hintText: 'Email',
        maxLines: 1,
        txtController: textEditingController1, oScure: false,
      ),
      CustomDivider(
        height: 0.01 * height,
        color: Colors.white,
      ),
      CustomTxtFormField(
        hintText: 'Password',
        maxLines: 1,
        txtController: textEditingController2,
        oScure: true,
      ),
      CustomDivider(
        height: 0.01 * height,
        color: Colors.white,
      ),
      CustomBtn(
          color: Colors.teal,
          txt: 'Sign UP',
          txtColor: Colors.white,
          height: 0.08 * height,
          function: () async {
            EmailAndPassword.eAP.signUpWithEmailAndPassword(
                textEditingController1.text, textEditingController2.text);
            Navigator.of(context).pop();
          })
    ]));
  }
}
