
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../class/number.dart';

class list_iteam extends StatelessWidget {
  list_iteam({required this.num,required this.color});
  final iteam num;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(num.image!),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  num.janame,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                Text(num.ename,
                    style: TextStyle(color: Colors.black, fontSize: 19)),
              ],
            ),
          ),
          Spacer(flex: 2),
          IconButton(
            onPressed: ()  {
            // AudioCache player=AudioCache(prefix: 'assets/sounds/numbers/');
            // player.play(num.sounds);
              final player = AudioPlayer();

               player.play(AssetSource(num.sounds));
                //player.play(num.sounds);

            },
            icon: Icon(
              CupertinoIcons.play_arrow_solid,
              color: Colors.white,
              size: 19,
            ),
          ),
        ],
      ),
    );
  }
}
class phrase_iteam extends StatelessWidget {
  phrase_iteam({required this.num,required this.color});
  final iteam num;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  num.janame,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                Text(num.ename,
                    style: TextStyle(color: Colors.black, fontSize: 19)),
              ],
            ),
          ),
          Spacer(flex: 2),
          IconButton(
            onPressed: ()  {
              // AudioCache player=AudioCache(prefix: 'assets/sounds/numbers/');
              // player.play(num.sounds);
              final player = AudioPlayer();

              player.play(AssetSource(num.sounds));
              //player.play(num.sounds);

            },
            icon: Icon(
              CupertinoIcons.play_arrow_solid,
              color: Colors.white,
              size: 19,
            ),
          ),
        ],
      ),
    );
  }
}
