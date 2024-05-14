import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_app_bar.dart';
import 'custom_notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomAppBar(),
          const SizedBox(
            height: 15.0,
          ),
          // Expanded(
          //   child: ListView.separated(
          //     itemBuilder: (context, index) {
          //       return const CustomNotesItem();
          //     },
          //     separatorBuilder: (context, index) {
          //       return const SizedBox(
          //         height: 10.0,
          //       );
          //     },
          //     itemCount: 5,
          //   ),
          // ),
          CustomNotesItem()
        ],
      ),
    );
  }
}
