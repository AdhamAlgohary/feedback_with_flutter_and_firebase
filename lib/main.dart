import 'package:feedback_with_mvvm/responsive/responsive.dart';
import 'package:feedback_with_mvvm/ui/screen/mobile-screen/custom-session-screen/custom_session_screen.dart';
import 'package:feedback_with_mvvm/ui/screen/mobile-screen//sign-up-screen/sign_up_screen.dart';
import 'package:feedback_with_mvvm/view-model/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui/screen/mobile-screen/choose-session-screen/choose_session_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ProductViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Responsive(),
        routes: {
          "ChooseSessionScreen": ((context) => const ChooseSessionScreen()),
          "CustomSessionScreen": (context) => CustomSessionScreen(),
          "SignUpScreen": (context) => SignUpScreen(),
        },
      ),
    );
  }
}
