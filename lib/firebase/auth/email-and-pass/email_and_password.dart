import 'package:feedback_with_mvvm/utilis/Constans.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EmailAndPassword {
  static EmailAndPassword eAP = EmailAndPassword();

  FirebaseAuth auth = FirebaseAuth.instance;

  signUpWithEmailAndPassword(String? email, String? pass) async {
    //email:adham@gmail.com
    //pass:1262001
    late UserCredential userCredential;
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email!, password: pass!);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        kdebugCheck('Email already exist');
      } else if (e.code == 'weak-password') {
        kdebugCheck('Weak password');
      }
    } catch (e) {
      kdebugCheck(e);
    }
  }

  signInWithEmailAndPassword(String? email, String? pass) async {
    //email:adham@gmail.com
    //pass:1262001
    late UserCredential userCredential;
    try {
      userCredential =
          await auth.signInWithEmailAndPassword(email: email!, password: pass!);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        kdebugCheck(' Wrong email');
      } else if (e.code == 'wrong-password') {
        kdebugCheck('Wrong password');
      }
    } catch (e) {
      kdebugCheck(e);
    }
  }

  signOut() async {
    await auth.signOut();
  }
}
