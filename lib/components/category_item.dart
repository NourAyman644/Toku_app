import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({required this.text,required this.color,required this.onTap});
  String text;
  Color color;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return    GestureDetector(

      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left:18 ),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        child: Text(text,style: TextStyle(color: Colors.white,fontSize: 19),),
        color: color,
      ),
    );

  }
}
