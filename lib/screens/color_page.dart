import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/iteam.dart';

import '../class/number.dart';

class color_page extends StatelessWidget  {
List<iteam> colors=const[
  iteam(image: 'assets/images/colors/color_black.png',
      ename: 'black',
      janame: 'Kurai',
      sounds: 'sounds/colors/black.wav')
  ,
  iteam(image: 'assets/images/colors/color_brown.png',
      ename: 'brown',
      janame: 'Chairo',
      sounds: 'sounds/colors/brown.wav')
  ,
  iteam(image: 'assets/images/colors/color_gray.png',
      ename: 'gray',
      janame: 'Gurē',
      sounds: 'sounds/colors/gray.wav')
  ,
  iteam(image: 'assets/images/colors/color_green.png',
      ename: 'green',
      janame: 'Midori',
      sounds: 'sounds/colors/green.wav')
  ,
  iteam(image: 'assets/images/colors/color_red.png',
      ename: 'red',
      janame: 'Aka',
      sounds: 'sounds/colors/red.wav')
  ,
  iteam(image: 'assets/images/colors/color_white.png',
      ename: 'white',
      janame: 'Shiro',
      sounds: 'sounds/colors/white.wav')
  ,
  iteam(image: 'assets/images/colors/yellow.png',
      ename: 'yellow',
      janame: 'Kiiro',
      sounds: 'sounds/colors/yellow.wav')
  ,



];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('colors'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return list_iteam(num: colors[index], color: Colors.green);
      },
          separatorBuilder: (context,index)=>SizedBox(height: 5,),
          itemCount: colors.length,
      ),


    );
  }
}
