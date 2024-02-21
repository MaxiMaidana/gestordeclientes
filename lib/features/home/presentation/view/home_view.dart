import 'package:flutter/material.dart';

import '../../../../core/responsive/widget_tree.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetTree(
      tiny: Text('tiny home'),
      phone: Text('phone home'),
      tablet: Text('tablet home'),
      largeTablet: Text('tablet home'),
      computer: Text('computer home'),
    );
  }
}
