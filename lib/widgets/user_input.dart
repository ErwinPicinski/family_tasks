import 'package:family_tasks/models/private_list.dart';
import 'package:flutter/material.dart';
import '../models/db_model.dart';
import './todo_card.dart';


class UserInput extends StatelessWidget {
  UserInput({required this.deleteFunction,required this.insertFunction, Key? key}) : super(key: key);
  var db = DBConnect();
  final Function deleteFunction;
  final Function insertFunction;

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
        child: FutureBuilder(
          future: db.getTodo(),
          initialData: const [],
          builder: (BuildContext context, AsyncSnapshot<List> snapshot){
            var data = snapshot.data;
            var datalength = data!.length;

            return datalength == 0 ? Center(child: Text('No tasks'))
            : ListView.builder(itemCount: datalength,
             itemBuilder: (context,i) => TodoCard(
              id: data[i].id,
              title: data[i].title,
              creationDate: data[i].creationDate,
              isDone: data[i].isDone,
              insertFunction: insertFunction,
              deleteFunction: deleteFunction,

             ),);
          },
        )
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Elevated Card')),
        ),
      ),
    );
  }
}
