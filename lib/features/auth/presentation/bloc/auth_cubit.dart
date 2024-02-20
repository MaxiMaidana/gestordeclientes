import 'package:bloc/bloc.dart';
import 'package:gestor_de_clientes/features/auth/data/models/user.dart';

class AuthCubit extends Cubit<bool> {
  AuthCubit() : super(false);

  late User user;
  void login({required String username, required String pass}) {
    try {
      if (username == 'melany' && pass == 'melany') {
        user = User(
            email: 'melany@melany.com',
            id: 1,
            name: 'Melany',
            rol: 'owner',
            username: username);
        emit(true);
      } else {
        throw Exception('datos incorrectos de usuario');
      }
    } catch (e) {
      emit(false);
    }
  }
}
