import 'package:catlog_app/pages/home_page.dart';
import 'package:catlog_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme:GoogleFonts.latoTextTheme()),
      initialRoute: "/",
      routes: {
        "/loginPage":(context) => const LoginPage(),
        "/":(context) => const HomePage(),
      }
    );
  }
}
