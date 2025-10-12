import 'package:flutter/material.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  static const String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Column(
              children: [
                LogoWelcome(),
                Spacer()
              ],
            )),
      ),
    );
  }
}
