import 'package:feedback_with_mvvm/ui/widgets/custom_btn.dart';
import 'package:feedback_with_mvvm/ui/widgets/custom_divider.dart';
import 'package:feedback_with_mvvm/utilis/Constans.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_txt_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
          const CustomTxtFormField(
            hintText: 'Email',
            oScure: false,
            maxLines: 1,
          ),
          CustomDivider(
            height: 0.01 * height,
            color: Colors.white,
          ),
          const CustomTxtFormField(
            hintText: 'Password',
            oScure: true,
            maxLines: 1,
          ),
          CustomDivider(
            height: 0.04 * height,
            color: Colors.white,
          ),
          CustomBtn(
            color: const Color.fromARGB(255, 10, 110, 192),
            txt: "log in",
            txtColor: Colors.white,
            height: 0.06 * height,
            function: () {},
          ),
        ],
      ),
    );
  }
}
