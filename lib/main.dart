import 'package:easy_localization/easy_localization.dart';
import 'package:evently/provider.dart';
import 'package:evently/starting_screen.dart';
import 'package:evently/theme/base_theme.dart';
import 'package:evently/theme/dark_theme.dart';
import 'package:evently/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => MyProvider(),
      child: EasyLocalization(
          supportedLocales: [Locale('ar'), Locale('en')],
          path:
              'assets/translations', // <-- change the path of the translation files
          fallbackLocale: Locale('en'),
          startLocale: Locale('en'),
          saveLocale: true,
          child: EventlyApp()),
    ),
  );
}

class EventlyApp extends StatelessWidget {
  EventlyApp({super.key});
  BaseTheme lightTheme = LightTheme();
  BaseTheme darkTheme = DarkTheme();
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routes: {
        StartingScreen.rout: (context) => StartingScreen(),
      },
      initialRoute: StartingScreen.rout,
      theme: lightTheme.themeData,
      darkTheme: darkTheme.themeData,
      themeMode: provider.themeMode,
    );
  }
}
