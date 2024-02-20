import 'package:flutter/material.dart';

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
        child: Column(
      children: [
        TextFormField(
          controller: userController,
        ),
        TextFormField(
          controller: passwordController,
        ),
      ],
    ));
  }
}
