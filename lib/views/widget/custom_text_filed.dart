import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxlines = 1, this.onSave,});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSave;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: onSave,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field Is Required';
        }else{
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
