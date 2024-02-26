import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_cubit.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_item_cubit.dart';
import 'package:gestor_de_clientes/features/menu/menu_enum.dart';
import 'package:go_router/go_router.dart';

class ClientsView extends StatelessWidget {
  final MenuItem menuItem;
  const ClientsView({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    context.read<MenuItemCubit>().changeState(menuItem);
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => context.go(Routes.addClient),
            child: Text('agregar cliente')),
        ElevatedButton(
            onPressed: () => context.go('${Routes.clients}/123'),
            child: Text('a ver que onda el cliente nuevo')),
      ],
    );
  }
}
