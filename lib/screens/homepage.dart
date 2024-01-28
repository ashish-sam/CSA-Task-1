import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/app_bg_top.svg',
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: kToolbarHeight * 2,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/announcements_updated_bg.png',
                    scale: 4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 7,
                          blurRadius: 10,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(5),
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      children: [
                        optionTile(
                            'assets/icons/book_tickets.png', "Book Tickets"),
                        optionTile(
                            'assets/icons/plan_journey.png', "Plan Journey"),
                        optionTile('assets/icons/nearby_metro_station.png',
                            "Search Station"),
                        optionTile('assets/icons/smart_card_recharge.png',
                            "Smart Card Recharge"),
                        optionTile('assets/icons/calculate_fare.png',
                            "Calculate Fare"),
                        optionTile('assets/icons/view_transactions.png',
                            "View Transactions")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 10,
                              blurRadius: 10)
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16, 8, 16, 2),
                          child: Card(
                            child: ListTile(
                              title: Text(
                                "Depart From",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Select Source",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              minVerticalPadding: 40,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16, 2, 16, 6),
                          child: Card(
                            child: ListTile(
                              title: Text(
                                "Destination",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Select Destination",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              minVerticalPadding: 40,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 2, 8, 0),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.blue.shade900,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: const SizedBox(
                              width: 325,
                              child: Center(
                                  child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Book Ticket",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 8),
                          child: MaterialButton(
                            elevation: 0,
                            onPressed: () {},
                            color: Colors.transparent,
                            textColor: Colors.blue.shade900,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: const SizedBox(
                              width: 325,
                              child: Center(
                                  child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Reset",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: kBottomNavigationBarHeight,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  SingleChildScrollView optionTile(String imgPath, String text) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 7,
                      blurRadius: 10,
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  imgPath,
                  scale: 2.5,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
