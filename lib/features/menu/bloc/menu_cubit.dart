import 'package:flutter_bloc/flutter_bloc.dart';

class MenuCubit extends Cubit<bool> {
  MenuCubit() : super(true);

  bool showText = true;

  Future<void> changeMenuSize(bool isOpen) async {
    if (isOpen) {
      emit(isOpen);
      await Future.delayed(const Duration(milliseconds: 400));
      showText = true;
    } else {
      isOpen = false;
      emit(isOpen);
    }
  }
}
