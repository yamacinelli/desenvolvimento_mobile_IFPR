import 'dart:ui';

import 'package:aula/widget/account.dart';
import 'package:aula/widget/book.dart';
import 'package:aula/widget/buy.dart';
import 'package:aula/widget/discover.dart';
import 'package:aula/widget/favorite.dart';
import 'package:aula/widget/home.dart';
import 'package:aula/widget/introduction.dart';
import 'package:aula/widget/login.dart';
import 'package:aula/widget/read.dart';
import 'package:aula/widget/setting.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BookWing",
      routes: {
        '/': (context) => Introduction(),
        'login': (context) => Login(),
        'home': (context) => Home(),
        'favorite': (context) => Favorite(),
        'account': (context) => Account(),
        'book': (context) => Book(),
        'buy': (context) => Buy(),
        'reading': (context) => Read(),
        'discover': (context) => Discover(),
        'settings': (context) => Setting(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xff605E9C),
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            background: Color(0xfffbf2f0),
            onBackground: Color(0xfffbf2f0),
            primary: Colors.black,
            onPrimary: Colors.black,
            secondary: Color(0xff061959),
            onSecondary: Color(0xff061959),
            error: Colors.redAccent,
            onError: Colors.redAccent,
            surface: Colors.black,
            onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: const Color(0xfffbf2f0),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xffffb914),
        ),
        fontFamily: 'Poltawski Nowy',
      ),
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
