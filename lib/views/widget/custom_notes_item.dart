import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24.0,bottom: 24.0,left: 24.0,right: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0), color: Color(0xffFFCD7A)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black,
              fontSize: 24.0
              ),
            ),
            subtitle:
            Padding(
              padding: const EdgeInsets.only(top: 16.0,bottom: 16.0),
              child: Text(
                'Bulid your career with hady khater',
              style: TextStyle(color: Colors.black.withOpacity(0.4),
              fontSize: 18.0
              ),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.trash,size: 24,color: Colors.black,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text('May21,2024',style: TextStyle(fontSize: 14,color:Colors.black.withOpacity(0.4) ),),
          )
        ],
      ),
    
    );
  }
}
