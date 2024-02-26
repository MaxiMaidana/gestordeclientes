import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_item_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

import '../bloc/menu_cubit.dart';
import '../menu_enum.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final menuItemCubit = context.watch<MenuItemCubit>();
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
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment:
                  menuCubit.state ? Alignment.centerLeft : Alignment.center,
              child: InkWell(
                onTap: () => context.go(Routes.home),
                child: Container(
                  height: 40,
                  width: menuCubit.state ? null : 40,
                  decoration: BoxDecoration(
                    color: menuItemCubit.state == MenuItem.home
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize:
                          menuCubit.state ? MainAxisSize.max : MainAxisSize.min,
                      children: [
                        const Icon(Icons.home),
                        if (menuCubit.state) ...[
                          const SizedBox(width: 10),
                          StreamBuilder<void>(
                            stream: delayed(const Duration(milliseconds: 200)),
                            builder: (context, state) {
                              if (state.hasData) {
                                return const Text('Home');
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
            ),
            const SizedBox(height: 10),
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment:
                  menuCubit.state ? Alignment.centerLeft : Alignment.center,
              child: InkWell(
                onTap: () => context.go(Routes.calendar),
                child: Container(
                  height: 40,
                  width: menuCubit.state ? null : 40,
                  decoration: BoxDecoration(
                    color: menuItemCubit.state == MenuItem.calendar
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize:
                          menuCubit.state ? MainAxisSize.max : MainAxisSize.min,
                      children: [
                        const Icon(Icons.calendar_month),
                        if (menuCubit.state) ...[
                          const SizedBox(width: 10),
                          StreamBuilder<void>(
                            stream: delayed(const Duration(milliseconds: 200)),
                            builder: (context, state) {
                              if (state.hasData) {
                                return const Text('Calendario');
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
            ),
            const SizedBox(height: 10),
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment:
                  menuCubit.state ? Alignment.centerLeft : Alignment.center,
              child: InkWell(
                onTap: () => context.go(Routes.clients),
                child: Container(
                  height: 40,
                  width: menuCubit.state ? null : 40,
                  decoration: BoxDecoration(
                    color: menuItemCubit.state == MenuItem.clients
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize:
                          menuCubit.state ? MainAxisSize.max : MainAxisSize.min,
                      children: [
                        const Icon(Icons.person),
                        if (menuCubit.state) ...[
                          const SizedBox(width: 10),
                          StreamBuilder<void>(
                            stream: delayed(const Duration(milliseconds: 200)),
                            builder: (context, state) {
                              if (state.hasData) {
                                return const Text('Clientes');
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
            ),
            const Spacer(),
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment:
                  menuCubit.state ? Alignment.centerLeft : Alignment.center,
              child: InkWell(
                hoverColor: Colors.red,
                onTap: () => context.go(Routes.config),
                child: Container(
                  height: 40,
                  width: menuCubit.state ? null : 40,
                  decoration: BoxDecoration(
                    color: menuItemCubit.state == MenuItem.config
                        ? Colors.grey[300]
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize:
                          menuCubit.state ? MainAxisSize.max : MainAxisSize.min,
                      children: [
                        const Icon(Icons.settings),
                        if (menuCubit.state) ...[
                          const SizedBox(width: 10),
                          StreamBuilder<void>(
                            stream: delayed(const Duration(milliseconds: 200)),
                            builder: (context, state) {
                              if (state.hasData) {
                                return const Text('Configuracion');
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
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Stream<void> delayed(Duration duration) {
    return Stream.periodic(duration, (n) => n);
  }
}
