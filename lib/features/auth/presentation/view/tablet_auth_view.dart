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
  final FocusNode userFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    userFocusNode.dispose();
    passwordFocusNode.dispose();
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
              focusNode: userFocusNode,
              controller: userController,
              onFieldSubmitted: (value) => passwordFocusNode.requestFocus(),
            ),
            TextFormField(
              focusNode: passwordFocusNode,
              controller: passwordController,
              onFieldSubmitted: (value) => _onSubmit(authCubit),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => _onSubmit(authCubit),
              child: const Text('Ingresar'),
            )
          ],
        ),
      ),
    );
  }

  void _onSubmit(AuthCubit authCubit) {
    authCubit.login(
        username: userController.text, pass: passwordController.text);
    if (authCubit.state) {
      context.go(Routes.home);
    }
  }
}
