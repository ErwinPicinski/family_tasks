import 'package:flutter/material.dart';


class UserInput extends StatelessWidget {
  
  const UserInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      color: Color.fromARGB(255, 255, 255, 255),
      child:  Column(children: [
        ElevatedCardExample(),
        ElevatedCardExample(),
        ElevatedCardExample(),
        ElevatedCardExample(),
      ],)  
      
      );
  }
}



class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      child: Card(
        child: SizedBox(
          width: 300,
          height: 60,
          child: Center(child: Text('Task')),
        ),
      ),
    );
  }
}