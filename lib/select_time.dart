import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class selecttime extends StatefulWidget {
  static const String routename = 'selecttime';

  @override
  State<selecttime> createState() => _selecttimeState();
}

class _selecttimeState extends State<selecttime> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('rtrbtfbb'),
      TableCalendar(
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        daysOfWeekVisible: true,
      ),
    ]);
  }
}
