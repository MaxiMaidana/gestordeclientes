import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/core/responsive/widget_tree.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_item_cubit.dart';
import 'package:gestor_de_clientes/features/menu/menu_enum.dart';

class ConfigView extends StatelessWidget {
  final MenuItem menuItem;
  const ConfigView({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    context.read<MenuItemCubit>().changeState(menuItem);
    return WidgetTree(
      tiny: Text('tiny config'),
      phone: Text('phone config'),
      tablet: Text('tablet config'),
      largeTablet: Text('tablet config'),
      computer: Text('computer config'),
    );
  }
}
