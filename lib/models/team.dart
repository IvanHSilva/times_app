import 'package:flutter/material.dart';
import 'package:times_app/models/team_title.dart';

class Team {
  String name;
  String symbol;
  int points;
  Color color;
  List<TeamTitle> titles = [];

  Team(
      {required this.name,
      required this.points,
      required this.symbol,
      required this.color});
}
