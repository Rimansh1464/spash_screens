import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'Screen/home_screen.dart';
import 'Screen/spash1.dart';
import 'Screen/spash2.dart';
import 'Screen/spash3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  bool isSplashScreenVisited = prefs.getBool("isSplashScreenVisited") ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Intro Screen",
      //home: HomePage(),
      initialRoute: (isSplashScreenVisited == true)
          ? AppRoutes().homePage
          : AppRoutes().spash1,
      routes: routes,
    ),
  );
}
class AppRoutes {
  String homePage = "/";
  String spash1 = "/intro1";
  String spash2 = "/intro2";
  String spach3 = "/intro3";
}
Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => HomePage(),
  AppRoutes().spash1: (context) => spash1(),
  AppRoutes().spash2: (context) => spash2(),
  AppRoutes().spach3: (context) => spash3(),
};