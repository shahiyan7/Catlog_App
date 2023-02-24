import 'package:catlog_app/utills/widgets/drawer.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar:AppBar(
          title: Text("Catlog App"),) ,
          body: Center(child: Container(child: Text("Welcome to flutter"),)),
          drawer: MyDrawer(),),
    );
  }
}