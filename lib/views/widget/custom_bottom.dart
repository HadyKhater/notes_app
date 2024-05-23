import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading=false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: kPrimaryColor,
        ),
        child: Center(
          child: isLoading ? const SizedBox(
            height: 24.0,
            width: 24.0,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          )
          : const Text(
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
