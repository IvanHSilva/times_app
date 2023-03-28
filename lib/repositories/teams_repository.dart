import 'package:flutter/material.dart';
import 'package:times_app/models/team.dart';
import 'package:times_app/models/team_title.dart';

class TeamsRepository {
  final List<Team> _teams = [];

  get teams => _teams;

  void addTitle({required Team team, required TeamTitle title}) {
    team.titles.add(title);
  }

  TeamsRepository() {
    _teams.addAll(
      [
        Team(
          name: 'Flamengo',
          points: 71,
          symbol: '../assets/images/logo-flamengo.png',
          color: Colors.red,
        ),
        Team(
          name: 'Internacional',
          points: 69,
          symbol: '../assets/images/logo-internacional.png',
          color: Colors.red,
        ),
        Team(
          name: 'Atlético-MG',
          points: 65,
          symbol: '../assets/images/logo-atletico-mineiro.png',
          color: Colors.black,
        ),
        Team(
          name: 'São Paulo',
          points: 63,
          symbol: '../assets/images/logo-sao-paulo.png',
          color: Colors.red,
        ),
        Team(
          name: 'Fluminense',
          points: 61,
          symbol: '../assets/images/logo-fluminense.png',
          color: Colors.green,
        ),
        Team(
          name: 'Grêmio',
          points: 59,
          symbol: '../assets/images/logo-gremio.png',
          color: Colors.blue,
        ),
        Team(
          name: 'Palmeiras',
          points: 58,
          symbol: '../assets/images/logo-palmeiras.png',
          color: Colors.green,
        ),
        Team(
          name: 'Santos',
          points: 54,
          symbol: '../assets/images/logo-santos.png',
          color: Colors.black,
        ),
        Team(
          name: 'Athletico-PR',
          points: 51,
          symbol: '../assets/images/logo-atletico-paranaense.png',
          color: Colors.red,
        ),
        Team(
          name: 'Corinthians',
          points: 50,
          symbol: '../assets/images/logo-corinthians.png',
          color: Colors.black,
        ),
        Team(
          name: 'Bragantino',
          points: 48,
          symbol: '../assets/images/logo-red-bull-bragantino.png',
          color: Colors.black,
        ),
        Team(
          name: 'Ceará',
          points: 45,
          symbol: '../assets/images/logo-ceara.png',
          color: Colors.green,
        ),
        Team(
          name: 'Atlético-GO',
          points: 42,
          symbol: '../assets/images/logo-atletico-goianiense.png',
          color: Colors.green,
        ),
        Team(
          name: 'Sport',
          points: 40,
          symbol: '../assets/images/logo-sport-recife.png',
          color: Colors.green,
        ),
        Team(
          name: 'Bahia',
          points: 39,
          symbol: '../assets/images/logo-bahia.png',
          color: Colors.green,
        ),
        Team(
          name: 'Fortaleza',
          points: 37,
          symbol: '../assets/images/logo-fortaleza.png',
          color: Colors.green,
        ),
        Team(
          name: 'Vasco',
          points: 35,
          symbol: '../assets/images/logo-vasco-da-gama.png',
          color: Colors.black,
        ),
        Team(
          name: 'Goiás',
          points: 33,
          symbol: '../assets/images/logo-goias-esporte-clube.png',
          color: Colors.green,
        ),
        Team(
          name: 'Coritiba',
          points: 32,
          symbol: '../assets/images/logo-coritiba.png',
          color: Colors.green,
        ),
        Team(
          name: 'Botafogo',
          points: 31,
          symbol: '../assets/images/logo-botafogo.png',
          color: Colors.black,
        ),
      ],
    );
  }
}
