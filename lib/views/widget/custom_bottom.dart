import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: kPrimaryColor,
        ),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
