import 'package:flutter/material.dart';
import 'custom_bottom.dart';
import 'custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextFiled(
              hint: 'Title',
            ),
            SizedBox(
              height: 16.0,
            ),
            CustomTextFiled(
              hint: 'Content',
              maxlines: 5,
            ),
            SizedBox(
              height: 100.0,
            ),
            CustomBottom(),
            SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}

