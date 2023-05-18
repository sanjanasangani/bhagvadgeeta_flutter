import 'package:flutter/material.dart';
import 'package:geeta/views/screens/detailspage.dart';
import 'package:geeta/views/screens/homepage.dart';
//import 'package:geeta/views/screens/slok1.dart';
import 'package:geeta/views/screens/slokpage.dart';
import 'package:geeta/views/screens/splash_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SplashScreen(),
        'homepage': (context) => homepage(),
        'slokpage': (context) => Slokpage(),
        //'slokpage1':(context) => slokpage1(),
        'detailspage':(context)=>detailspage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
    );
  }
}
