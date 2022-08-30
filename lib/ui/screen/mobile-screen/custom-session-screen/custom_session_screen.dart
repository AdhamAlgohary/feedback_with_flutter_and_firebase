import 'package:feedback_with_mvvm/ui/widgets/custom_btn.dart';
import 'package:feedback_with_mvvm/ui/widgets/custom_txt.dart';
import 'package:feedback_with_mvvm/ui/widgets/custom_txt_and_radio_btn.dart';
import 'package:feedback_with_mvvm/ui/widgets/custom_txt_and_txt_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../utilis/Constans.dart';
import '../../../../view-model/product_view_model.dart';
import '../../../widgets/custom_icon_btn.dart';

// ignore: must_be_immutable
class CustomSessionScreen extends StatelessWidget {
  static TextEditingController controller1 = TextEditingController();
  static TextEditingController controller2 = TextEditingController();
  const CustomSessionScreen({
    Key? key,
  }) : super(key: key);

  void dispose() {
    controller1.dispose();
    controller2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            leading: CustomIconBtn(
              icon: const Icon(Icons.arrow_back),
              function: () {
                Navigator.pop(context);
              },
            ),
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: CustomTxt(
                      txt: context.watch<ProductViewModel>().listTileContent[
                              context.watch<ProductViewModel>().index]
                          ['titleListTile']),
                ),
                CustomTxt(
                    txt: context.watch<ProductViewModel>().listTileContent[
                            context.watch<ProductViewModel>().index]
                        ['subtitleListTile']),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  top: 0.05 * width,
                ),
                child: CustomTxt(
                  txt: 'Mon 1/8/2022',
                ),
              ),
            ],
          ),
          preferredSize: Size.fromHeight(0.12 * height),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            CustomTxtAndRadioBtn(
              txt: 'Is the content Simple?',
              txt1: "Yes",
              txt2: "No",
            ),
            CustomTxtAndTxtForm(
              maxLines: 5,
              txt: 'If no , please say why?',
              txtController: controller1,
            ),
            CustomTxtAndRadioBtn(
              txt: 'Is the Practical part during session ?',
              txt1: "Yes",
              txt2: "No",
            ),
            CustomTxtAndRadioBtn(
              txt: 'Have all question been answered ?',
              txt1: "Yes",
              txt2: "No",
            ),
            CustomTxtAndTxtForm(
              maxLines: 5,
              txt: 'How to improve our session ?',
              txtController: controller2,
            ),
            CustomBtn(
              color: const Color.fromARGB(255, 10, 110, 192),
              txt: 'Submit',
              txtColor: Colors.white,
              height: 0.06 * height,
              function: () {
                Provider.of<ProductViewModel>(context, listen: false)
                    .reasonNotSimple = controller1.text;
                Provider.of<ProductViewModel>(context, listen: false)
                    .sugesstion = controller2.text;
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Thank you"),
                        content: const Text("Your Submit is sent"),
                        contentTextStyle: style3,
                      );
                    });
              },
            ),
          ],
        ));
  }
}
