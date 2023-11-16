import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.png"),
          const Padding(
            padding: EdgeInsets.only(bottom: 0, left: 32, top: 0, right: 32),
          child:
            TextField(
              decoration: InputDecoration(
                icon: ImageIcon(AssetImage('assets/icons/envelope.png')),
                hintText: 'E-mail'
                ),
            ), // Added closing parenthesis here
          ),
        ],
      ),
      ),
    );
  }
  
}