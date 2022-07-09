import 'package:flutter/material.dart';

void main() => runApp(FamilyTasks());

class FamilyTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
                appBar: AppBar(title: Text('Family Tasks')),
                body: Center(child: Text("Hello world")),

    ));
  }
}
