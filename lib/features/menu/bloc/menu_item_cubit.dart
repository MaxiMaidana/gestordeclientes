import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/features/menu/menu_enum.dart';

class MenuItemCubit extends Cubit<MenuItem> {
  MenuItemCubit() : super(MenuItem.home);

  MenuItem menuItem = MenuItem.home;

  void changeState(MenuItem menuItem) => emit(menuItem);
}
