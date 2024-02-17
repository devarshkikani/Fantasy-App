// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:semi11/constant/default_images.dart';
import 'package:semi11/constant/sizedbox.dart';
import 'package:semi11/screens/cricket/cricket_screen.dart';
import 'package:semi11/screens/football/football_screen.dart';
import 'package:semi11/screens/home/home_screen_controller.dart';
import 'package:semi11/screens/kabbadi/kabbadi_screen.dart';
import 'package:semi11/theme/colors.dart';
import 'package:semi11/theme/text_style.dart';

class HomeScreen extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: light,
        appBar: AppBar(
          leadingWidth: 35,
          elevation: 0,
          backgroundColor: primary,
          leading: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                hamburgerMenu,
                color: light,
              ),
            ),
          ),
          title: Text(
            'Semi 11',
            style: mediumText24.copyWith(
              color: light,
              fontFamily: 'source_serif_pro',
            ),
          ),
          actions: <Widget>[
            const Icon(
              Icons.notifications_sharp,
              color: light,
            ),
            width10,
            const CircleAvatar(
              maxRadius: 16,
              backgroundImage: AssetImage(authBackground),
            ),
            width10,
          ],
          bottom: const TabBar(
            labelColor: primary,
            unselectedLabelColor: light,
            indicatorSize: TabBarIndicatorSize.label,
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: light,
            ),
            tabs: <Tab>[
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Cricket'),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Football'),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Kabbadi'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CricketScreen(),
            FootballScreen(),
            KabbadiScreen(),
          ],
        ),
      ),
    );
  }

  Widget tabDecoration(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: primary, width: 1),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }
}
