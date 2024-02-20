import 'package:flutter/material.dart';

import '../../../core/responsive/widget_tree.dart';
import '../view/tablet_home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetTree(
        tiny: Text('tiny'),
        phone: Text('phone'),
        tablet: Text('tablet'),
        largeTablet: TabletHomeView(),
        computer: Text('computer'),
      ),
    );
  }
}
