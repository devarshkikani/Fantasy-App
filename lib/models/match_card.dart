// To parse this JSON data, do
//
//     final matchCart = matchCartFromJson(jsonString);

import 'dart:convert';

MatchCart matchCartFromJson(String str) =>
    MatchCart.fromJson(json.decode(str) as Map<String, dynamic>);

String matchCartToJson(MatchCart data) => json.encode(data.toJson());

class MatchCart {
  MatchCart({
    required this.leagueName,
    required this.teams,
    required this.contestPrice,
    required this.startAt,
    required this.totalSpots,
  });
  factory MatchCart.fromJson(Map<String, dynamic> json) => MatchCart(
        leagueName: json['league_name'].toString(),
        teams: List<Team>.from(
          (json['teams'] as List<Team>).map(
            (x) => Team.fromJson(x as Map<String, dynamic>),
          ),
        ),
        startAt: json['startAt'] != null
            ? DateTime.parse(json['startAt'] as String)
            : null,
        contestPrice: json['contest_price'].toString(),
        totalSpots: json['total_spots'].toString(),
      );

  String leagueName;
  List<Team> teams;
  String contestPrice;
  String totalSpots;
  DateTime? startAt;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'league_name': leagueName,
        'teams': List<dynamic>.from(teams.map((Team x) => x.toJson())),
        'contest_price': contestPrice,
        'startAt': startAt != null ? startAt!.toIso8601String() : startAt,
        'total_spots': totalSpots,
      };
}

class Team {
  Team({
    required this.name,
    required this.image,
  });
  factory Team.fromJson(Map<String, dynamic> json) => Team(
        name: json['name'].toString(),
        image: json['image'].toString(),
      );

  String name;
  String image;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'image': image,
      };
}
