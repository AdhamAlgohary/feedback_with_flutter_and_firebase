import 'package:flutter/material.dart';

import '../ui/screen/mobile-screen/MobileScreen.dart';
import '../ui/screen/web-screen/web_screen.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context,constrains){
      if (constrains.maxWidth>=850) {
        return const WebScreen();
        
      }else{
        return const MobileScreen();
      }

    });
  }
}