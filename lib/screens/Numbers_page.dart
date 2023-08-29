import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/iteam.dart';

import '../class/number.dart';

class Numbers_page extends StatelessWidget {
  
  final List<iteam> numbers = const [
    iteam(
        image: 'assets/images/numbers/number_one.png',
        ename: 'one',
        janame: 'Ichi',
        sounds: 'sounds/numbers/number_one_sound.mp3',
    ),
    iteam(
        image: 'assets/images/numbers/number_two.png',
        ename: 'two',
        janame: 'Ni',
        sounds: 'sounds/numbers/number_two_sound.mp3'
    ),
    iteam(
        image: 'assets/images/numbers/number_three.png',
        ename: 'three',
        janame: 'San',
        sounds: 'sounds/numbers/number_three_sound.mp3'
    ),
    iteam(
        image: 'assets/images/numbers/number_four.png',
        ename: 'four',
        janame: 'Shi',
        sounds: 'sounds/numbers/number_four_sound.mp3'
    ),
    iteam(
        image: 'assets/images/numbers/number_five.png',
        ename: 'five',
        janame: 'Go',
        sounds: 'sounds/numbers/number_five_sound.mp3'
    ),
    iteam(
        image: 'assets/images/numbers/number_six.png',
        ename: 'six',
        janame: 'Roku', sounds: 'sounds/numbers/number_six_sound.mp3'
    ),
    iteam(
        image: 'assets/images/numbers/number_seven.png',
        ename: 'seven',
        janame: 'Sebun',  sounds: 'sounds/numbers/number_seven_sound.mp3'),
    iteam(
        image: 'assets/images/numbers/number_eight.png',
        ename: 'eight',
        janame: 'Hachi',  sounds: 'sounds/numbers/number_eight_sound.mp3'),
    iteam(
        image: 'assets/images/numbers/number_nine.png',
        ename: 'nine',
        janame: 'Kyū', sounds: 'sounds/numbers/number_nine_sound.mp3'
    ),
    iteam(
        image: 'assets/images/numbers/number_ten.png',
        ename: 'ten',
        janame: ' jū',  sounds: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Colors.brown,
      ),
      body:
      //   Getlist(numbers),
      ListView.separated(
        itemBuilder:(context,indext){
          return list_iteam(num: numbers[indext],color:  Color(0xffEF9235),);
        },
        separatorBuilder: (context,indext)=>SizedBox(height: 5,),

        itemCount: numbers.length,
      )
    );
  }


}
