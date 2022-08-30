import 'package:flutter/material.dart';

class CustomTxtFormField extends StatelessWidget {
  final String? hintText;
  final int? maxLines;
  final TextEditingController? txtController;
  final bool oScure;

  const CustomTxtFormField({
    Key? key,
    @required this.hintText,
    @required this.maxLines,
    this.txtController, required this.oScure,
    
  }) : super(key: key);

  void dispose() {
    txtController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red)),
      ),
      maxLines: maxLines,
      obscureText: oScure,
    );
  }
}
