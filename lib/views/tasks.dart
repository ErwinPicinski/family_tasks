import 'package:family_tasks/views/template.dart';
import 'package:family_tasks/widgets/MyAppBar.dart';
import 'package:family_tasks/widgets/MyBottomBar.dart';
import 'package:family_tasks/widgets/AddTodoDialogWidget.dart';
import 'package:family_tasks/widgets/user_input.dart';
import 'package:flutter/material.dart';
import 'template.dart';
import '../models/private_list.dart';
import '../models/db_model.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);
  createState() => _TasksState();
  @override
  _TasksState CreateState() => _TasksState();
}


class _TasksState extends State<Tasks> {

  var db = DBConnect();
  void addItem(Private_list private_list) async {
    await db.insertTodo(private_list);
    setState(() {});
  }

  void deleteItem(Private_list private_list) async {
    await db.deleteTodo(private_list);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddTodoDialogWidget(addItem: addItem),
          
        ),
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          UserInput(deleteFunction: deleteItem, insertFunction: addItem),
        ],
      ),
    );
  }
}
