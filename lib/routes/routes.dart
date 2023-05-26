import 'package:backendless_todo_starter/pages/loading.dart';
import 'package:backendless_todo_starter/pages/login.dart';
import 'package:backendless_todo_starter/pages/register.dart';
import 'package:backendless_todo_starter/pages/todo_page.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String loginPage = '/';
  static const String registerPage = '/registerPage';
  static const String todoPage = '/todoPage';
  static const String loadingPage = '/loadingPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => Login(),
        );

      case registerPage:
        return MaterialPageRoute(
          builder: (context) => Register(),
        );

      case todoPage:
        return MaterialPageRoute(
          builder: (context) => TodoPage(),
        );

      case loadingPage:
        return MaterialPageRoute(
          builder: (context) => Loading(),
        );

      default:
        throw FormatException('Route not found! Check routes again!');
    }
  }
}
