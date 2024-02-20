import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:url_strategy/url_strategy.dart';
import 'core/routes/go_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const BlocProviders());
}

class BlocProviders extends StatelessWidget {
  const BlocProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  }
}
