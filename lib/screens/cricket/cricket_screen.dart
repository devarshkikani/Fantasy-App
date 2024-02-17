// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:semi11/constant/default_images.dart';
import 'package:semi11/constant/sizedbox.dart';
import 'package:semi11/models/match_card.dart';
import 'package:semi11/screens/cricket/cricket_screen_controller.dart';
import 'package:semi11/theme/colors.dart';
import 'package:semi11/theme/text_style.dart';

class CricketScreen extends GetView<CricketScreenController> {
  final List<MatchCart> upcomingGames = [
    MatchCart(
      leagueName: 'Indian T20 league',
      teams: [
        Team(name: 'Chennai Super Kings', image: stallionsLogo),
        Team(name: 'Royal Challangers Banglore', image: seasonLogo),
      ],
      startAt: DateTime(2023, 2, 14),
      contestPrice: '₹50 Lakhs',
      totalSpots: '1000',
    ),
    MatchCart(
      leagueName: 'Indian T20 league',
      teams: [
        Team(name: 'Mumbai Indians', image: musketeersLogo),
        Team(name: 'Sunrise Hydrabad', image: mastersLogo),
      ],
      startAt: DateTime(2023, 2, 15),
      contestPrice: '₹80 Lakhs',
      totalSpots: '2300',
    ),
    MatchCart(
      leagueName: 'Indian T20 league',
      teams: [
        Team(name: 'Gujrat Lions', image: kenyaLogo),
        Team(name: 'Kolkata Knigts', image: daikundiLogo),
      ],
      startAt: DateTime(2023, 2, 16),
      contestPrice: '40 Lakhs',
      totalSpots: '300',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: light,
        appBar: PreferredSize(
          preferredSize: Size(Get.width, 70),
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: secondary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              padding: const EdgeInsets.symmetric(vertical: 8),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primary,
              ),
              labelColor: whiteColor,
              indicatorColor: primary,
              unselectedLabelColor: blackColor,
              automaticIndicatorColorAdjustment: true,
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              labelStyle: lightText14.copyWith(
                letterSpacing: 0.5,
              ),
              tabs: <Tab>[
                Tab(
                  child: tabDecoration('Upcoming'),
                ),
                Tab(
                  child: tabDecoration('Live'),
                ),
                Tab(
                  child: tabDecoration('Completed'),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            matchCardDesign(upcomingGames),
            matchCardDesign(upcomingGames),
            matchCardDesign(upcomingGames),
          ],
        ),
      ),
    );
  }

  Widget tabDecoration(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
        ),
      ),
    );
  }

  Widget matchCardDesign(List<MatchCart> gameCart) {
    return gameCart.isEmpty
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Center(
                  child: Text(
                    '''You haven't joined any contests that completed recently Join contests for any of upcoming matches.''',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        : ListView.builder(
            itemCount: gameCart.length,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 10,
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  border: Border.all(
                    color: secondary.withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          height5,
                          Text(
                            gameCart[index].leagueName,
                            style: lightText12,
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                    Container(
                      // color: error,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            gameCart[index].teams[0].image,
                            height: 50,
                            width: 50,
                          ),
                          const Text(
                            'VS',
                          ),
                          Image.asset(
                            gameCart[index].teams[1].image,
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    height5,
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: secondary.withOpacity(0.2),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            gameCart[index].contestPrice,
                            style: lightText14,
                          ),
                          Container(
                            height: 25,
                            width: 130,
                            margin: const EdgeInsets.symmetric(vertical: 0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              '13 Apr',
                              style: lightText12.copyWith(
                                color: whiteColor,
                              ),
                            ),
                          ),
                          Text(
                            '${gameCart[index].totalSpots} Spot',
                            style: lightText12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
