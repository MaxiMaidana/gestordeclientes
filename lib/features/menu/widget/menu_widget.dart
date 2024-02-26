import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/features/menu/widget/menu_item_widget.dart';

import 'package:sizer/sizer.dart';

import '../bloc/menu_cubit.dart';
import '../menu_enum.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final menuCubit = context.watch<MenuCubit>();
    return Padding(
      padding: EdgeInsets.only(right: 0.5.w),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: menuCubit.state ? 20.w : 7.w,
        decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12)),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0.5, 0),
                  color: Colors.grey,
                  blurRadius: 4,
                  spreadRadius: 0.5,
                  blurStyle: BlurStyle.normal)
            ]),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => menuCubit.changeMenuSize(!menuCubit.state),
            ),
            const SizedBox(height: 20),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: CachedNetworkImage(
                imageUrl:
                    "https://t4.ftcdn.net/jpg/03/38/18/47/360_F_338184799_qDtjVptNgJZMDLQpvpRrmzNOCdWfqhzX.jpg",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(height: 20),
            const MenuItemWidget(title: 'Home', menuItem: MenuItem.home),
            const SizedBox(height: 10),
            const MenuItemWidget(
                title: 'Calendario', menuItem: MenuItem.calendar),
            const SizedBox(height: 10),
            const MenuItemWidget(title: 'Clientes', menuItem: MenuItem.clients),
            const Spacer(),
            const MenuItemWidget(
                title: 'Configuracion', menuItem: MenuItem.config),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
