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
      title: "App",
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
        brightness: Brightness.dark,
        primaryColor: const Color(0xff605E9C),
        scaffoldBackgroundColor: Colors.indigo,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xffffb914),
        ),
        fontFamily: 'Poltawski Nowy',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}