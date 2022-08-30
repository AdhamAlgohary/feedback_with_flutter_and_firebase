import 'package:feedback_with_mvvm/ui/widgets/custom_btn.dart';
import 'package:feedback_with_mvvm/ui/widgets/custom_divider.dart';
import 'package:feedback_with_mvvm/ui/widgets/custom_inkwell.dart';
import 'package:feedback_with_mvvm/utilis/Constans.dart';
import 'package:flutter/material.dart';

import '../../../../firebase/auth/email-and-pass/email_and_password.dart';
import '../../../widgets/custom_txt_form_field.dart';

class LoginScreen extends StatelessWidget {
  static TextEditingController textEditingController1 = TextEditingController();
  static TextEditingController textEditingController2 = TextEditingController();
  const LoginScreen({Key? key}) : super(key: key);

  void dispose() {
    textEditingController1.dispose();
    textEditingController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Center(child: Image.asset('images/splash.png')),
            margin: EdgeInsets.all(0.05 * height),
          ),
          Center(
            child: Text(
              "Login",
              style: style1,
            ),
          ),
          CustomDivider(
            height: 0.07 * height,
            color: Colors.white,
          ),
          CustomTxtFormField(
            hintText: 'Email',
            maxLines: 1,
            txtController: textEditingController1,
            oScure: false,
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
          Padding(
            padding: EdgeInsets.only(left: 0.02 * height, top: 0.005 * height),
            child: CustomInkwell(
                txt: 'If you have not account click here',
                function: () {
                  Navigator.of(context).pushNamed("SignUpScreen");
                }),
          ),
          CustomDivider(
            height: 0.01 * height,
            color: Colors.white,
          ),
          CustomBtn(
            color: const Color.fromARGB(255, 10, 110, 192),
            txt: "log in",
            txtColor: Colors.white,
            height: 0.06 * height,
            function: () async {
              if (await EmailAndPassword.eAP.signInWithEmailAndPassword(
                      textEditingController1.text,
                      textEditingController2.text) !=
                  null) {
                Navigator.of(context)
                    .pushReplacementNamed("ChooseSessionScreen");
              }
            },
          ),
        ],
      ),
    );
  }
}
