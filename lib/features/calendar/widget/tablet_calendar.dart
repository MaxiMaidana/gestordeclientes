import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TabletCalendar extends StatefulWidget {
  const TabletCalendar({super.key});

  @override
  State<TabletCalendar> createState() => _TabletCalendarState();
}

class _TabletCalendarState extends State<TabletCalendar> {
  @override
  Widget build(BuildContext context) {
    DateTime _focusedDay = DateTime.now();
    return TableCalendar(
      locale: 'es_ES',
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: _focusedDay,
      // selectedDayPredicate: (day) {
      //   log(day.toString());
      //   return true;
      // },
      onDaySelected: (selectedDay, focusedDay) {
        log(selectedDay.toString());
        log('=======');
        log(focusedDay.toString());
        setState(() {
          // _selectedDay = selectedDay;
          _focusedDay = focusedDay; // update `_focusedDay` here as well
        });
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }
}
