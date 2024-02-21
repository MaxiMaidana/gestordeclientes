import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestor_de_clientes/features/menu/menu_enum.dart';

class MenuCubit extends Cubit<bool> {
  MenuCubit() : super(true);

  MenuItem menuItem = MenuItem.init;

  void changeMenu() {
    emit(!state);
  }
}
