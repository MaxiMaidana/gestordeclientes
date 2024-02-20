import 'package:flutter/material.dart';

class TabletHomeView extends StatefulWidget {
  const TabletHomeView({super.key});

  @override
  State<TabletHomeView> createState() => _TabletHomeViewState();
}

class _TabletHomeViewState extends State<TabletHomeView> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('sisi home tablet'),
    );
  }
}
