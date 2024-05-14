import 'package:flutter/material.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',style: TextStyle(
            fontSize: 24.0
          ),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
