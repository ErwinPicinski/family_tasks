import 'package:family_tasks/models/private_list.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatefulWidget{

  final int id;
  final String title;
  final DateTime creationDate;
  bool isDone;
  final Function  deleteFunction;
  final Function  insertFunction;


  TodoCard({
    required this.id,
    required this.title,
    required this.creationDate,
    required this.isDone,
    required this.insertFunction,
    required this.deleteFunction,

    Key? key}) : super(key: key);
  @override

  _TodoCardState createState() => _TodoCardState();

}

class _TodoCardState extends State<TodoCard>{
  @override 
  Widget build(BuildContext context){
    var anotherTodo = Private_list(id: widget.id, title: widget.title, creationDate: widget.creationDate, isDone: widget.isDone);
    return Card(
      child: Row(
        children: [
          Container(
            child: Checkbox(
              value: widget.isDone,
               onChanged: (bool? value)  {
                setState(() {
                  widget.isDone = value!;
                });
                anotherTodo.isDone = value!;
                widget.insertFunction(anotherTodo);
               },
               
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title),
                const SizedBox(height: 5),
              ]
            ,)
          ),
          IconButton(onPressed: (){widget.deleteFunction(anotherTodo);}, icon: const Icon(Icons.close)),
        ]
      ),

    );
  }
}