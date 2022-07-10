import 'package:flutter/material.dart';
import '../views/template.dart';

class MyBottomBar extends BottomNavigationBar {
  MyBottomBar(onTappedBar, currentIndex)
      : super(
          onTap: onTappedBar,
          currentIndex: currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.task_alt),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calendar',
            ),
           
          ],
        );
}
