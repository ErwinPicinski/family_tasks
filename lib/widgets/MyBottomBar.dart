import 'package:flutter/material.dart';

class MyBottomBar extends BottomNavigationBar {
  MyBottomBar()
      : super(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.task_alt),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Shared Lists',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calendar',
            ),
          ],
        );
}
