import 'package:flutter/material.dart';

import '../../../../core/widget_tree.dart';
import '../view/tablet_auth_view.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetTree(
        tiny: Text('tiny'),
        phone: Text('phone'),
        tablet: Text('tablet'),
        largeTablet: TabletAuthView(),
        computer: Text('computer'),
      ),
    );
  }
}
