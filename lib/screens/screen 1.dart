import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/screens/family.dart';
import 'package:toku_app/screens/phrase_page.dart';

import '../components/category_item.dart';
import 'Numbers_page.dart';
import 'color_page.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xC6B0A4FF),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xFF46322B),
      ),
      body: Column(
        children: [
          category(
            text: 'Numbers',
            color: Color(0xffEF9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return Numbers_page();
                }),
              );
            },
          ),
          category(
            text: 'Family members',
            color: Colors.green,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return family_page();
                }),
              );
            },
          ),
          category(
            text: 'Colors',
            color: Colors.purple,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return color_page();
                }),
              );
            },
          ),
          category(
            text: 'Phrases',
            color: Colors.blue,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return phrase_page();
              })
              );
            },
          ),
        ],
      ),
    );
  }
}
