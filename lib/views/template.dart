import 'package:family_tasks/widgets/MyAppBar.dart';
import 'package:family_tasks/widgets/MyBottomBar.dart';
import 'package:family_tasks/widgets/user_input.dart';
import 'package:flutter/material.dart';
import 'simplecalendar.dart';
import 'tasks.dart';

class Template extends StatefulWidget {
  const Template({Key? key}) : super(key: key);
  createState() => _TemplateState();
  @override
  _TemplateState CreateState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  int _selectedIndex = 0;

  List<Widget> _screens = <Widget>[Tasks(),simpleCalendar()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: MyAppBar(),
      
      body: Center(
        child: _screens.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: MyBottomBar(_onItemTapped, _selectedIndex),
    );
  }
}
