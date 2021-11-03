part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class ChangeTheme extends ThemeState {
  bool isLight = true;

  ChangeTheme(this.isLight);
}
