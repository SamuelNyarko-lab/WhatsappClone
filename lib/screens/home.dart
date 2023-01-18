// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/widgets/chatcounter.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Color maincolor = Theme.of(context).primaryColor;
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(7, 90, 80, 1),
          leading: Center(
            child: SizedBox(
              child: AutoSizeText(
                'Whatsapp',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          leadingWidth: deviceWidth / 2.5,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
              ),
            ),
          ],
          bottom: TabBar(
              indicatorColor: Colors.white,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              isScrollable: true,
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              //
              tabs: [
                Tab(
                  child: Icon(Icons.camera),
                ),
                Tab(
                  text: 'COMMUNITY',
                ),
                Tab(
                  child: SizedBox(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AutoSizeText('CHATS'),
                      SizedBox(width: 5),
                      chatcount('12', maincolor),
                    ],
                  )),
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.flight, size: 350),
          Icon(Icons.directions_transit, size: 350),
          Icon(Icons.directions_car, size: 350),
          Icon(Icons.flight, size: 350),
          Icon(Icons.directions_transit, size: 350),
        ]),
      ),
    );
  }
}
