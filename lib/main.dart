import 'package:csatask1/screens/bellpage.dart';
import 'package:csatask1/screens/defaultScreen.dart';
import 'package:csatask1/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final screenList = [
    const HomePage(),
    const DefaultScreen(),
    const DefaultScreen(),
    const BellPage()
  ];

  void setIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          leading: SvgPicture.asset(
            'assets/icons/menu_icon.svg',
            fit: BoxFit.scaleDown,
          ),
          backgroundColor: Colors.transparent,
          title: Image.asset(
            'assets/images/app_logo.png',
            scale: 3,
          ),
          centerTitle: true,
          surfaceTintColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Login"),
                ),
              ),
            )
          ],
        ),
        extendBody: true,
        body: screenList[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ]),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: _selectedIndex,
              onTap: (index) {
                setIndex(index);
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.blue.shade900,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/home.svg'),
                    label: "Home",
                    activeIcon: SvgPicture.asset(
                      'assets/icons/home.svg',
                      color: Colors.blue,
                    )),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/maps.svg'),
                    label: "Maps",
                    activeIcon: SvgPicture.asset(
                      'assets/icons/maps.svg',
                      color: Colors.blue,
                    )),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/tickets.svg'),
                    label: "Tickets",
                    activeIcon: SvgPicture.asset(
                      'assets/icons/tickets.svg',
                      color: Colors.blue,
                    )),
                BottomNavigationBarItem(
                    icon:
                        SvgPicture.asset('assets/icons/notification_icon.svg'),
                    label: "Notifications",
                    activeIcon: SvgPicture.asset(
                      'assets/icons/notification_icon.svg',
                      color: Colors.blue,
                    )),
              ],
              type: BottomNavigationBarType.fixed,
            ),
          ),
        ),
      ),
    );
  }
}
