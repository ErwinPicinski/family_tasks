import 'package:family_tasks/models/db_model.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import '../models/db_model.dart';
import '../models/private_list.dart';
import '../views/tasks.dart';
class AddTodoDialogWidget extends StatelessWidget {

  final Function addItem;
  final _formKey = GlobalKey<FormState>();
  var db = DBConnect();
  var textController = TextEditingController();
  AddTodoDialogWidget({required this.addItem});
  void close(context) {
   Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Text(
                  'Add Todo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(hintText: "Add Task"),
                ),
              ),
            ),
            saveButton(context),

          ],
        ),
      );

  Widget saveButton(context) => SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: () {
          var todoData = Private_list(
              title: textController.text,
              creationDate: DateTime.now(),
              isDone: false);
          addItem(todoData);
          close(context);
        },
        child: Text("Save", style: TextStyle(color: Colors.white)),
      ));


}