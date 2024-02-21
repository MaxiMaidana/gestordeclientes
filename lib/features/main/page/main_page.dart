import 'package:flutter/material.dart';
import 'package:gestor_de_clientes/features/main/view/main_view.dart';

import '../../../core/responsive/widget_tree.dart';
import '../../menu/menu_enum.dart';

class MainPage extends StatefulWidget {
  final Widget view;
  const MainPage({super.key, required this.view});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetTree(
        tiny: Text('tiny'),
        phone: Text('phone'),
        tablet: Text('tablet'),
        largeTablet: MainView(
          view: widget.view,
        ),
        computer: Text('computer'),
      ),
    );
  }
}
