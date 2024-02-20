import 'package:flutter/material.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

class TabletAuthView extends StatefulWidget {
  const TabletAuthView({super.key});

  @override
  State<TabletAuthView> createState() => _TabletAuthViewState();
}

class _TabletAuthViewState extends State<TabletAuthView> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: userController,
          ),
          TextFormField(
            controller: passwordController,
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () => context.go(Routes.home),
            child: const Text('Ingresar'),
          )
        ],
      ),
    ));
  }
}
