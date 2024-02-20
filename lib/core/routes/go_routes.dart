import 'package:flutter/material.dart';
import 'package:gestor_de_clientes/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/page/auth_page.dart';
import '../../features/home/page/home_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');
GoRouter goRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: Routes.main,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: Routes.main,
      redirect: (context, state) {
        // if (!GetPlatform.isWeb) {
        //   if (!LocalStorage.getPrefBool(SetPref.isFirstTime)) {
        //     return Routes.intro;
        //   } else if (LocalStorage.getPrefBool(SetPref.auth)) {
        //     return Routes.home;
        //   } else {
        //     return Routes.auth;
        //   }
        // }
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
    GoRoute(
      path: Routes.home,
      builder: (context, state) {
        return const HomePage();
      },
    ),
    // GoRoute(
    //   path: Routes.register,
    //   builder: (context, state) {
    //     Get.put(RegisterController());
    //     return const RegisterPage();
    //   },
    // ),
    // GoRoute(
    //   path: Routes.registerComplete,
    //   builder: (context, state) {
    //     return const RegisterCompletePage();
    //   },
    // ),
    // GoRoute(
    //   path: Routes.changePassword,
    //   builder: (context, state) {
    //     Get.put(ChangePasswordController());
    //     return const ChangePasswordPage();
    //   },
    // ),
    // GoRoute(
    //   path: Routes.home,
    //   builder: (context, state) {
    //     Get.put(HomeController());
    //     Get.put(ProfileController());
    //     Get.put(PetsController());
    //     Get.put(AdsController());
    //     Get.put(ReminderPageController());
    //     final reminderController = Get.find<ReminderController>();
    //     reminderController.initCalendarApi();
    //     // Get.delete<RegisterController>(force: true);
    //     // Get.delete<AuthController>(force: true);
    //     return const HomePage();
    //   },
    // ),
    // GoRoute(
    //   path: Routes.newPet,
    //   builder: (context, state) {
    //     Get.put(NewPetController());
    //     return const NewPetPage();
    //   },
    // ),
    // GoRoute(
    //   path: Routes.newPetCompleted,
    //   builder: (context, state) {
    //     return const PetAddedCorrectPage();
    //   },
    // ),
    // GoRoute(
    //   path: Routes.infoPet,
    //   builder: (context, state) {
    //     final infoPetController = Get.put(InfoPetController());
    //     infoPetController.setPetId(state.queryParams['id']!);
    //     final petsController = Get.find<PetsController>();
    //     infoPetController
    //         .setPetModel(petsController.searchPet(state.queryParams['id']!));
    //     return const InfoPetPage();
    //   },
    // ),
    // GoRoute(
    //   path: Routes.editInfoPet,
    //   builder: (context, state) {
    //     final editInfoPetController = Get.put(EditInfoPetController());
    //     final petsController = Get.find<PetsController>();
    //     editInfoPetController
    //         .setPetModel(petsController.searchPet(state.queryParams['id']!));
    //     return const EditInfoPetPage();
    //   },
    // ),
    // GoRoute(
    //   path: Routes.map,
    //   builder: (context, state) {
    //     Get.put(MapController());
    //     return const MapPage();
    //   },
    // ),
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
    // GoRoute(
    //   parentNavigatorKey: _rootNavigatorKey,
    //   path: Routes.errorPage,
    //   builder: (context, state) => const Page404(),
    // ),
  ],
);
