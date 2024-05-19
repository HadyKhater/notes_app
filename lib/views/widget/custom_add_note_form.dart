import 'package:flutter/material.dart';

import 'custom_bottom.dart';
import 'custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFiled(
            onSave: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16.0,
          ),
          CustomTextFiled(
            onSave: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 100.0,
          ),
          CustomBottom(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              }
            },
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
