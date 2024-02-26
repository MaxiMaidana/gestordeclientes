import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/features/calendar/widget/tablet_calendar.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_item_cubit.dart';
import 'package:gestor_de_clientes/features/menu/menu_enum.dart';

import '../../../core/responsive/widget_tree.dart';

class CalendarView extends StatelessWidget {
  final MenuItem menuItem;
  const CalendarView({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    context.read<MenuItemCubit>().changeState(menuItem);
    return WidgetTree(
      tiny: Text('tiny calendar'),
      phone: Text('phone calendar'),
      tablet: TabletCalendar(),
      largeTablet: TabletCalendar(),
      computer: TabletCalendar(),
    );
  }
}
