import 'package:airplane/ui/pages/get_started.dart';
import 'package:flutter/material.dart';
import 'ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashPage(),
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
      },
    );
  }
}
