import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool _isLightTheme = true;

  void changeTheme() {
    _isLightTheme = !_isLightTheme;
    emit(ChangeTheme(_isLightTheme));
  }
}
