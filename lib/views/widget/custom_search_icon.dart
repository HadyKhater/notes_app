import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      width: 46.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white.withOpacity(.05),
      ),
      child:  Center(
        child: Icon(
          icon,
          size: 24,
        ),
      ),
    );
  }
}