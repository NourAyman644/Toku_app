import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/iteam.dart';

import '../class/number.dart';


class phrase_page extends StatelessWidget {
  List<iteam>ph = const [
    iteam(
        ename: 'are you coming',
        janame: 'Anata wa kite imasu',
        sounds: 'sounds/phrases/are_you_coming.wav'),
    iteam(
        ename: 'dont_forget_to_subscribe',
        janame: 'Kōdoku o wasurenaide kudasai',
        sounds: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    iteam(
        ename: 'how are you feeling',
        janame: 'Go kibun wa ikagadesu ka',
        sounds: 'sounds/phrases/how_are_you_feeling.wav'),
    iteam(
        ename: 'i love anime',
        janame: 'Watashi wa anime ga daisukidesu',
        sounds: 'sounds/phrases/i_love_anime.wav'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('phrase'),
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
          itemBuilder: (context,index){

            return phrase_iteam(num: ph [index], color: Colors.pink);
          },
          separatorBuilder: (context,index)=>SizedBox(height: 5,),
          itemCount: ph.length),
    );
  }
}
