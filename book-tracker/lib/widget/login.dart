import 'package:aula/constant/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Container(
          child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, Constants.ROUTE_HOME),
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor),
          child: const Text('Login'),
        ),
      )),
    );
  }
}
