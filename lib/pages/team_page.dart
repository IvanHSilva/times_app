import 'package:flutter/material.dart';

import '../models/team.dart';

class TeamPage extends StatefulWidget {
  Team team;
  TeamPage({required Key key, required this.team}) : super(key: key);

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.team.color,
          title: Text(widget.team.name),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.stacked_line_chart),
                text: 'Estatísticas',
              ),
              Tab(
                icon: Icon(Icons.emoji_events),
                text: 'Títulos',
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Image.asset(widget.team.symbol),
                ),
                Text(
                  'Pontos: ${widget.team.points}',
                  style: const TextStyle(fontSize: 22),
                ),
              ],
            ),
            teamTitles(),
          ],
        ),
      ),
    );
  }

  Widget teamTitles() {
    final quantity = widget.team.titles.length;
    return quantity == 0
        ? const Center(
            child: Text('Nenhum Título'),
          )
        : ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const Icon(Icons.emoji_events),
                title: Text(widget.team.titles[index].championship),
                trailing: Text(widget.team.titles[index].year.toString()),
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: quantity,
          );
  }
}
