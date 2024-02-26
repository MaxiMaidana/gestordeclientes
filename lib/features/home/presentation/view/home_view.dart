import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_item_cubit.dart';
import 'package:gestor_de_clientes/features/menu/menu_enum.dart';

import '../../../../core/responsive/widget_tree.dart';

class HomeView extends StatelessWidget {
  final MenuItem menuItem;
  const HomeView({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    context.read<MenuItemCubit>().changeState(menuItem);
    return WidgetTree(
      tiny: Text('tiny home'),
      phone: Text('phone home'),
      tablet: Text('tablet home'),
      largeTablet: Text('tablet home'),
      computer: Text('computer home'),
    );
  }
}
