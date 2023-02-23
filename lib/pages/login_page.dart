import 'package:catlog_app/utills/routes.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool selected = false;
  final _formKey = GlobalKey<FormState>();
  void moveTOHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
    setState(() {
      selected = true;
    });
    await Future.delayed(Duration(seconds: 1));
    // ignore: use_build_context_synchronously
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      selected = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/undraw_hey_email_liaa.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      decoration: InputDecoration(
                          labelText: "User Name", hintText: "Enter username "),
                      validator: (value) {
                        if (value == null||value.isEmpty) {
                          return "User name cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "Enter password "),
                      validator: (value) {
                        if (value == null||value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "password should have atleast 6 character";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(selected ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveTOHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: selected ? 80 : 150,
                          height: selected ? 50 : 50,
                          alignment: Alignment.center,
                          child: selected
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
