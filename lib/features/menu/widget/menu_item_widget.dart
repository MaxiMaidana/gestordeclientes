import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_cubit.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_item_cubit.dart';
import 'package:gestor_de_clientes/features/menu/menu_enum.dart';
import 'package:go_router/go_router.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final MenuItem menuItem;
  const MenuItemWidget({
    super.key,
    required this.title,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    final menuItemCubit = context.watch<MenuItemCubit>();
    final menuCubit = context.watch<MenuCubit>();
    return AnimatedAlign(
      duration: const Duration(milliseconds: 300),
      alignment: menuCubit.state ? Alignment.centerLeft : Alignment.center,
      child: InkWell(
        onTap: () => menuItem == MenuItem.home
            ? context.go(Routes.home)
            : menuItem == MenuItem.calendar
                ? context.go(Routes.calendar)
                : menuItem == MenuItem.config
                    ? context.go(Routes.config)
                    : context.go(Routes.clients),
        child: Container(
          height: 40,
          width: menuCubit.state ? null : 40,
          decoration: BoxDecoration(
            color: menuItemCubit.state == menuItem
                ? Colors.grey[300]
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Row(
              mainAxisSize:
                  menuCubit.state ? MainAxisSize.max : MainAxisSize.min,
              children: [
                Icon(menuItem == MenuItem.home
                    ? Icons.home
                    : menuItem == MenuItem.calendar
                        ? Icons.calendar_month
                        : menuItem == MenuItem.config
                            ? Icons.settings
                            : Icons.person),
                if (menuCubit.state) ...[
                  const SizedBox(width: 10),
                  StreamBuilder<void>(
                    stream: delayed(const Duration(milliseconds: 200)),
                    builder: (context, state) {
                      if (state.hasData) {
                        return Text(title);
                      } else {
                        return Container();
                      }
                    },
                  )
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stream<void> delayed(Duration duration) {
    return Stream.periodic(duration, (n) => n);
  }
}
