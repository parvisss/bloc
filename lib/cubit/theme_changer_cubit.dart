import 'package:bloc/bloc.dart';

class ThemeChangerCubit extends Cubit<bool> {
  ThemeChangerCubit() : super(true);

  void changeTheme(bool theme) {
    emit(theme); 
  }
}
