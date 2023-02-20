import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 3;
  final String name = 'shahiyan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
              "this $days flutter challenge is going to complted by $name"),
        ),
      ),
    );
  }
}
