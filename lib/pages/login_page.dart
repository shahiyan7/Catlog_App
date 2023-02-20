import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text("Login page",style: TextStyle(
          fontSize: 40.0,
          color: Colors.blue,
          fontWeight:FontWeight.bold,
        ),),),
      ),
    );
  }
}
