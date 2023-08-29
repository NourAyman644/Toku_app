import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/class/number.dart';
import 'package:toku_app/components/iteam.dart';

class family_page extends StatelessWidget {
  final List<iteam> family= const[
    iteam(image: 'assets/images/family_members/family_father.png',
        ename: 'father',
        janame: 'Chichioya',
        sounds: 'sounds/family_members/father.wav')
    ,
    iteam(image: 'assets/images/family_members/family_mother.png',
        ename: 'mother',
        janame: 'Hahaoya',
        sounds: 'sounds/family_members/mother.wav')
    ,
    iteam(image: 'assets/images/family_members/family_grandmother.png',
        ename: 'grand mother',
        janame: 'Obāchan',
        sounds: 'sounds/family_members/grandmother.wav')
    ,
    iteam(image: 'assets/images/family_members/family_grandfather.png',
        ename: 'grand father',
        janame: 'Ojīsan',
        sounds: 'sounds/family_members/grandfather.wav')
    ,
    iteam(image: 'assets/images/family_members/family_daughter.png',
        ename: 'daugther',
        janame: 'Musume',
        sounds: 'sounds/family_members/daughter.wav')
    ,
    iteam(image: 'assets/images/family_members/family_son.png',
        ename: 'son',
        janame: 'Musuko',
        sounds: 'sounds/family_members/son.wav')
    ,
    iteam(image: 'assets/images/family_members/family_older_sister.png',
        ename: 'older sister',
        janame: 'Ane',
        sounds: 'sounds/family_members/oldersister.wav')
    ,
    iteam(image: 'assets/images/family_members/family_older_brother.png',
        ename: 'older brother',
        janame: 'Imōto',
        sounds: 'sounds/family_members/olderbother.wav')
    ,
    iteam(image: 'assets/images/family_members/family_younger_sister.png',
        ename: 'younger sister',
        janame: 'Imōto',
        sounds: 'sounds/family_members/youngersister.wav')
    ,
    iteam(image: 'assets/images/family_members/family_younger_brother.png',
        ename: 'younger brother',
        janame: 'Otōto',
        sounds: 'sounds/family_members/youngerbrohter.wav')
    ,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Family members',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index){
            return list_iteam(num: family[index], color: Colors.purple);

          },
          separatorBuilder: (context,index)=>SizedBox(height :5),
          itemCount: family.length
      ),
    );
  }
}
