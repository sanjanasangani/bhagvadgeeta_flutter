import 'package:flutter/material.dart';
import 'package:geeta/providers/Theme_Providers.dart';
import 'package:geeta/utils/app_themes.dart';
import 'package:geeta/utils/listslok.dart';
import 'package:geeta/utils/route_utils.dart';
import 'package:geeta/views/screens/detailspage.dart';
import 'package:geeta/views/screens/homepage.dart';
import 'package:geeta/views/screens/slokpage.dart';
import 'package:geeta/views/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Models/Theme_Modals.dart';
import 'package:geeta/utils/app_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool isDarkTheme = prefs.getBool('isDark') ?? false;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(themeModel: ThemeModel(isDark: isDarkTheme))),
      ],
      builder: (context, _) {
        return MaterialApp(
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: (Provider.of<ThemeProvider>(context).themeModel.isDark == true) ? ThemeMode.light : ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => const SplashScreen(),
            'homepage': (context) => const homepage(),
            MyRoutes.slockPage: (context) => const Slokpage(),
            'detailspage': (context) => const detailspage(),
          },
        );
      },
    ),
  );
}
