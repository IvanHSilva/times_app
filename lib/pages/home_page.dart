import 'package:flutter/material.dart';
import 'package:times_app/pages/home_controller.dart';
import 'package:times_app/pages/team_page.dart';

import '../models/team.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brasileirão'),
      ),
      body: ListView.separated(
        itemCount: controller.teams.length,
        itemBuilder: (BuildContext context, int i) {
          final List<Team> table = controller.teams;
          return ListTile(
            leading: Image.asset(table[i].symbol),
            title: Text(table[i].name),
            trailing: Text(table[i].points.toString()),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => TeamPage(
                    key: Key(table[i].name),
                    team: table[i],
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
