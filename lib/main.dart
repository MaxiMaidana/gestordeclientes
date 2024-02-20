import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:url_strategy/url_strategy.dart';
import 'core/routes/go_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      useDefaultLoading: false,
      overlayWidgetBuilder: (progres) {
        return const Center(
          child: CircularProgressIndicator(color: Colors.pink),
        );
      },
      child: MaterialApp.router(
        title: 'Flutter Demoooooooooo',
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
  }
}
