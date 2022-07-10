import 'package:family_tasks/views/template.dart';
import 'package:family_tasks/widgets/MyAppBar.dart';
import 'package:family_tasks/widgets/MyBottomBar.dart';
import 'package:family_tasks/widgets/user_input.dart';
import 'package:family_tasks/widgets/AddEventToCalendarWidget.dart';
import 'package:flutter/material.dart';
import 'template.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class simpleCalendar extends StatefulWidget {
  const simpleCalendar({Key? key}) : super(key: key);
  createState() => _simpleCalendarState();
  @override
  _simpleCalendarState CreateState() => _simpleCalendarState();
}

class _simpleCalendarState extends State<simpleCalendar> {

  DateTime startTime = DateTime.now();
  DateTime endTime = DateTime.now().add(Duration(days: 1));
  TextEditingController textController = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.month,
      firstDayOfWeek: 1,
    );
  }
}
