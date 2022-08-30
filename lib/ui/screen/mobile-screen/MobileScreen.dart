import 'package:feedback_with_mvvm/ui/screen/mobile-screen/login-screen/login_screen.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginScreen(),);
  }
}