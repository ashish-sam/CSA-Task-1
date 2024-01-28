import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MetroTile extends StatelessWidget {
  final String metroText;
  final Color metroColor;
  final int index;

  const MetroTile(
      {super.key,
      required this.metroText,
      required this.metroColor,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: metroColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 10,
                  blurRadius: 10)
            ]),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: ListTile(
            contentPadding: const EdgeInsets.all(8),
            leading: SvgPicture.asset(
              'assets/icons/train.svg',
              fit: BoxFit.scaleDown,
              color: metroColor,
            ),
            title: Text(
              "Line $index",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.white,
            selectedTileColor: Colors.white,
            subtitle: Text(metroText),
            trailing: Container(
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.green)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Normal Service",
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
