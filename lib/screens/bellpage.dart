import 'package:csatask1/components/OptionTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BellPage extends StatelessWidget {
  const BellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/app_bg_top.svg',
            fit: BoxFit.fill,
          ),
          ListView(
            shrinkWrap: true,
            children: const [
              MetroTile(
                  metroText: 'Red Line', metroColor: Colors.red, index: 1),
              MetroTile(
                  metroText: 'Yellow Line',
                  metroColor: Colors.yellow,
                  index: 2),
              MetroTile(
                  metroText: 'Blue Line', metroColor: Colors.blue, index: 3),
              MetroTile(
                  metroText: 'Blue Line', metroColor: Colors.blue, index: 4),
              MetroTile(
                  metroText: 'Green Line', metroColor: Colors.green, index: 5),
              MetroTile(
                  metroText: 'Pink Line', metroColor: Colors.pink, index: 6),
              MetroTile(
                  metroText: 'Violet Line',
                  metroColor: Colors.purple,
                  index: 7),
              MetroTile(
                  metroText: 'Green Line', metroColor: Colors.green, index: 8),
              MetroTile(
                  metroText: 'Yellow Line',
                  metroColor: Colors.yellow,
                  index: 9),
              MetroTile(
                  metroText: 'Blue Line', metroColor: Colors.blue, index: 10),
            ],
          )
        ],
      ),
    );
  }
}
