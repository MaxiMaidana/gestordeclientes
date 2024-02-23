import 'package:flutter/material.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

class ClientsView extends StatelessWidget {
  const ClientsView({super.key});

  @override
  Widget build(BuildContext context) {
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
