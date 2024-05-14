import 'package:flutter/material.dart';
import 'custom_notes_item.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const CustomNotesItem();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10.0,
        );
      },
      itemCount: 5,
    );
  }
}