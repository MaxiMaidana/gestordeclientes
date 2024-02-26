import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_cubit.dart';
import 'package:sizer/sizer.dart';
import '../../menu/widget/menu_widget.dart';

const Key _kBottomNavKey = ValueKey("bottom-nav-bar");

class MainView extends StatelessWidget {
  final Widget view;
  const MainView({super.key, required this.view});

  @override
  Widget build(BuildContext context) {
    final menuCubit = context.watch<MenuCubit>();
    return Row(
      children: [
        const MenuWidget(key: _kBottomNavKey),
        SizedBox(
          width: menuCubit.state ? 79.5.w : 92.5.w,
          child: view,
        ),
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
