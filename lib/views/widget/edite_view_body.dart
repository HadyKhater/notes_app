import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_app_bar.dart';
import 'package:notes_app/views/widget/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.done,
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomTextFiled(hint: 'Title'),
          SizedBox(
            height: 16.0,
          ),
          CustomTextFiled(
            hint: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
