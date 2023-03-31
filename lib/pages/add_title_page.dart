import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:times_app/models/team.dart';
import 'package:times_app/models/team_title.dart';

class AddTitlePage extends StatefulWidget {
  Team? team;
  ValueChanged<TeamTitle>? onSave;

  AddTitlePage({super.key, team, onSave});

  @override
  State<AddTitlePage> createState() => _AddTitlePageState();
}

class _AddTitlePageState extends State<AddTitlePage> {
  final _championship = TextEditingController();
  final _year = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.team?.color,
        title: const Text('Adicionar título'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextFormField(
                controller: _year,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ano',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isNull || value!.isEmpty) {
                    return 'Informe o ano do título';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: TextFormField(
                controller: _championship,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Campeonato',
                ),
                validator: (value) {
                  if (value.isNull || value!.isEmpty) {
                    return 'Informe o campeonato';
                  }
                  return null;
                },
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(24),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      widget.onSave!(
                        TeamTitle(
                          championship: _championship.text,
                          year: int.parse(_year.text),
                        ),
                      );
                    }
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Salvar',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
