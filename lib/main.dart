import 'package:flutter/material.dart';
import './models/db_model.dart';
import './models/private_list.dart';
import 'views/template.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var db = DBConnect();
  runApp(FamilyTasks());
}

class FamilyTasks extends StatelessWidget {
  const FamilyTasks({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Template(),
      
    );
  }
}
