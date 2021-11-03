import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/bloc/cubit/clock_cubit.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/bloc/cubit/theme_cubit.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/home_screen.dart';
import 'package:flutter_ui_analog_clock/src/utils/theme.dart';

import 'sample_feature/sample_item_details_view.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ClockCubit>(
          create: (_) => ClockCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
      ],
      child: AnimatedBuilder(
        animation: settingsController,
        builder: (BuildContext context, Widget? child) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              bool isLightTheme = true;
              if (state is ChangeTheme) {
                isLightTheme = state.isLight;
              }

              return MaterialApp(
                debugShowCheckedModeBanner: false,
                restorationScopeId: 'app',
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', ''), // English, no country code
                ],
                onGenerateTitle: (BuildContext context) =>
                    AppLocalizations.of(context)!.appTitle,
                theme: themeData(context),
                darkTheme: darkThemeData(context),
                themeMode: isLightTheme ? ThemeMode.light : ThemeMode.dark,
                onGenerateRoute: (RouteSettings routeSettings) {
                  return MaterialPageRoute<void>(
                    settings: routeSettings,
                    builder: (BuildContext context) {
                      switch (routeSettings.name) {
                        case SettingsView.routeName:
                          return SettingsView(controller: settingsController);
                        case SampleItemDetailsView.routeName:
                          return const SampleItemDetailsView();
                        case HomeScreen.routeName:
                        default:
                          return HomeScreen();
                      }
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
