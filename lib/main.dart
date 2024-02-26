import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_cubit.dart';
import 'package:gestor_de_clientes/features/menu/bloc/menu_item_cubit.dart';
import 'package:url_strategy/url_strategy.dart';
import 'core/app/app.dart';

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
        BlocProvider(create: (context) => MenuItemCubit()),
        BlocProvider(create: (context) => MenuCubit()),
      ],
      child: const App(),
    );
  }
}
