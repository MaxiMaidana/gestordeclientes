import 'package:flutter/material.dart';

import '../../../core/responsive/widget_tree.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetTree(
      tiny: Text('tiny calendar'),
      phone: Text('phone calendar'),
      tablet: Text('tablet calendar'),
      largeTablet: Text('tablet calendar'),
      computer: Text('computer calendar'),
    );
  }
}
