import 'package:flutter/material.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:gestor_de_clientes/features/calendar/view/calendar_view.dart';
import 'package:gestor_de_clientes/features/clients/view/client_id_view.dart';
import 'package:gestor_de_clientes/features/clients/view/clients_view.dart';
import 'package:gestor_de_clientes/features/home/presentation/view/home_view.dart';
import 'package:gestor_de_clientes/features/menu/menu_enum.dart';
import 'package:gestor_de_clientes/features/new_client/new_client.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/page/auth_page.dart';
import '../../features/main/page/main_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');
GoRouter goRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: Routes.init,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: Routes.init,
      redirect: (context, state) {
        return Routes.auth;
      },
      // builder: (context, state) {
      // if (GetPlatform.isAndroid || GetPlatform.isIOS) {
      //   return const Scaffold(
      //     body: CircularProgressIndicator(),
      //   );
      // }
      // return const WebMainPage();
      // return const TestCameraPage();
      // },
    ),
    GoRoute(
      path: Routes.auth,
      builder: (context, state) {
        return const AuthPage();
      },
    ),
    ShellRoute(
      pageBuilder: (_, routerState, child) {
        return NoTransitionPage<void>(
          key: routerState.pageKey,
          child: MainPage(
            view: child,
          ),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: Routes.calendar,
          pageBuilder: (_, routerState) {
            return NoTransitionPage<void>(
              key: routerState.pageKey,
              child: const CalendarView(
                menuItem: MenuItem.calendar,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.clients,
          pageBuilder: (_, routerState) {
            return NoTransitionPage<void>(
              key: routerState.pageKey,
              child: const ClientsView(
                menuItem: MenuItem.clients,
              ),
            );
          },
        ),
        GoRoute(
          path: '${Routes.clients}/:id',
          pageBuilder: (_, routerState) {
            return NoTransitionPage<void>(
              key: routerState.pageKey,
              child: ClientIdView(
                id: routerState.pathParameters['id']!,
              ),
            );
          },
        ),
        GoRoute(
          path: Routes.addClient,
          pageBuilder: (_, routerState) {
            return NoTransitionPage<void>(
              key: routerState.pageKey,
              child: const NewClient(),
            );
          },
        ),
        GoRoute(
          path: Routes.home,
          pageBuilder: (_, routerState) {
            return NoTransitionPage<void>(
              key: routerState.pageKey,
              child: const HomeView(
                menuItem: MenuItem.home,
              ),
            );
          },
        ),
      ],
    ),

    // ShellRoute(
    //   navigatorKey: _shellNavigatorKey,
    //   builder: (BuildContext context, GoRouterState state, Widget child) {
    //     return HomeLayout(child: child);
    //   },
    //   routes: <RouteBase>[
    //     GoRoute(
    //       path: Routes.home,
    //       builder: (BuildContext context, GoRouterState state) {
    //         LocalStorage.setPref('inicio_pos', true);
    //         LocalStorage.setPref('products_pos', false);
    //         LocalStorage.setPref('sales_pos', false);
    //         LocalStorage.setPref('stock_pos', false);
    //         return const HomeView();
    //       },
    //     ),
    //     GoRoute(
    //       path: Routes.products,
    //       builder: (BuildContext context, GoRouterState state) {
    //         LocalStorage.setPref('products_pos', true);
    //         LocalStorage.setPref('inicio_pos', false);
    //         LocalStorage.setPref('sales_pos', false);
    //         LocalStorage.setPref('stock_pos', false);
    //         return const ProductsView();
    //       },
    //     ),
    //     GoRoute(
    //       path: '${Routes.products}/:id',
    //       builder: (BuildContext context, GoRouterState state) {
    //         return ProductsItemView(
    //             nailPolishId: state.params['id'] ?? 'Error');
    //       },
    //     ),
    //     GoRoute(
    //       path: Routes.sales,
    //       builder: (BuildContext context, GoRouterState state) {
    //         LocalStorage.setPref('sales_pos', true);
    //         LocalStorage.setPref('inicio_pos', false);
    //         LocalStorage.setPref('products_pos', false);
    //         LocalStorage.setPref('stock_pos', false);
    //         return const SalesView();
    //       },
    //     ),
    //     GoRoute(
    //       path: Routes.stock,
    //       builder: (BuildContext context, GoRouterState state) {
    //         LocalStorage.setPref('stock_pos', true);
    //         LocalStorage.setPref('inicio_pos', false);
    //         LocalStorage.setPref('products_pos', false);
    //         LocalStorage.setPref('sales_pos', false);
    //         return const StockView();
    //       },
    //     ),
    //   ],
    // ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: Routes.errorPage,
      builder: (context, state) => const Scaffold(
        body: Text('error pa'),
      ),
    ),
  ],
);
