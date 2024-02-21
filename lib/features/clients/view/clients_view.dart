import 'package:flutter/material.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

import '../../../core/responsive/widget_tree.dart';

class ClientsView extends StatelessWidget {
  const ClientsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => context.push(Routes.addClient),
            child: Text('agregar cliente')),
        ElevatedButton(
            onPressed: () => context.push('${Routes.clients}/123'),
            child: Text('a ver que onda el cliente nuevo')),
      ],
    );
  }
}
