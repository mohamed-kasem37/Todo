import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import 'Task_Tap.dart';

class TaskList extends StatelessWidget {
  static const String routename = 'tasklist';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CalendarTimeline(
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime.now().add(Duration(days: 365)),
        onDateSelected: (date) => print(date),
        leftMargin: 20,
        monthColor: Colors.black,
        dayColor: Colors.black,
        activeDayColor: Colors.white,
        activeBackgroundDayColor: Theme.of(context).primaryColor,
        dotsColor: Color(0xFF333A47),
        selectableDayPredicate: (date) => date.day != 22,
        locale: 'en_ISO',
        showYears: true,
      ),
      Expanded(
          child: ListView.builder(
        itemBuilder: (context, index) => TaskWidgit(),
        itemCount: 15,
      )),
    ]);
  }
}
