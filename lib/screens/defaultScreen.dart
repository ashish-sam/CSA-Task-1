import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DefaultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset(
          'assets/icons/app_bg_top.svg',
          fit: BoxFit.fill,
        ),
        Center(child: Text("Default page"))
      ]),
    );
  }
}
