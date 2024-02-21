import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../routes/go_routes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GlobalLoaderOverlay(
          useDefaultLoading: false,
          overlayWidgetBuilder: (progres) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.pink),
            );
          },
          child: MaterialApp.router(
            title: 'Gestor de clientes',
            debugShowCheckedModeBanner: false,
            routerConfig: goRouter,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              // GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('es', 'ES'),
            ],
          ),
        );
      },
    );
  }
}
