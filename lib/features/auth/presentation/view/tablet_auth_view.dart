import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

import '../bloc/auth_cubit.dart';

class TabletAuthView extends StatefulWidget {
  const TabletAuthView({super.key});

  @override
  State<TabletAuthView> createState() => _TabletAuthViewState();
}

class _TabletAuthViewState extends State<TabletAuthView> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authCubit = context.watch<AuthCubit>();
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
            onPressed: () {
              authCubit.login(
                  username: userController.text, pass: passwordController.text);
              if (authCubit.state) {
                context.go(Routes.home);
              }
            },
            child: const Text('Ingresar'),
          )
        ],
      ),
    ));
  }
}
