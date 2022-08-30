import 'package:flutter/cupertino.dart';

import '../../utilis/Constans.dart';
import 'custom_txt.dart';
import 'custom_txt_form_field.dart';

class CustomTxtAndTxtForm extends StatelessWidget {
  final int? maxLines;
  final String? txt;
  final TextEditingController? txtController;
  const CustomTxtAndTxtForm(
      {Key? key,
      @required this.maxLines,
      @required this.txt,
      @required this.txtController})
      : super(key: key);
    
      void dispose() {
        txtController!.dispose();
        
      }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(left: 0.04 * width, bottom: 0.04 * height),
        child: CustomTxt(
          txt: txt,
          textStyle: style3,
        ),
      ),
      CustomTxtFormField(
        txtController: txtController,
        hintText: txt,
        maxLines: maxLines, oScure: false,
      ),
    ]);
  }
}
