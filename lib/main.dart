import 'package:catlog_app/pages/home_page.dart';
import 'package:catlog_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:catlog_app/pages/home_page.dart';
import 'package:catlog_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   themeMode: ThemeMode.light,
   theme: ThemeData(primarySwatch: Colors.purple),
   initialRoute: '/home',
      routes: {
        '/':(context) => LoginPage(),
        '/home':(context) => HomePage(),
        '/login':(context) =>  LoginPage(),
      },
    );
  }

  // ignore: invalid_required_named_param
 
}
