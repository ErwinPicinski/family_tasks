import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar()
      : super(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'utils/logo.png',
                fit: BoxFit.contain,
                height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('FamilyTasks'))
            ],
          ),
        );
}
