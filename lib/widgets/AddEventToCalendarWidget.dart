import 'package:flutter/material.dart';


class AddEventToCalendarWidget extends StatefulWidget {
  @override
  _AddEventToCalendarWidgetState createState() => _AddEventToCalendarWidgetState();
}

class _AddEventToCalendarWidgetState extends State<AddEventToCalendarWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Event',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}