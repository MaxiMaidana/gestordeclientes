import 'package:flutter/material.dart';
import '../../menu/widget/menu_widget.dart';

const Key _kBottomNavKey = ValueKey("bottom-nav-bar");

class MainView extends StatelessWidget {
  final Widget view;
  const MainView({super.key, required this.view});

  @override
  Widget build(BuildContext context) {
    // final authCubit = context.watch<MenuCubit>();
    return Row(
      children: [
        const MenuWidget(key: _kBottomNavKey),
        view,
        // AnimatedContainer(
        //   duration: const Duration(milliseconds: 300),
        //   width: authCubit.state ? 79.5.w : 92.5.w,
        //   color: Colors.grey[100],
        //   child: view,
        // ),
      ],
    );
  }
}
