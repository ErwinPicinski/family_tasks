import 'package:flutter/material.dart';
import './models/db_model.dart';
import './models/private_list.dart';
import './views/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var db = DBConnect();
  await db.insertTodo(Private_list(
    id: 1,
    title: 'This is the sample todo',
    creationDate: DateTime.now(),
    isDone: false));
  print(await db.getTodo());
  runApp(FamilyTasks());
}






class FamilyTasks extends StatelessWidget {
  const FamilyTasks({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Homepage());
  }
}
