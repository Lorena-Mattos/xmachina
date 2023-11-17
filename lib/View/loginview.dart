// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:xmachina/constant/colors.dart';

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
            Padding(
            padding: const EdgeInsets.only(bottom: 0, left: 32, top: 56, right: 32),
          child:
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: size.width,
                maxWidth: size.width,
                maxHeight: 40,
                minHeight: 40
              ),
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: primaryColor))
                ),
                child: TextField(
                  style: TextStyle(color: primaryColor),
                  decoration: InputDecoration(
                    icon: ImageIcon(AssetImage('assets/icons/envelope.png'),
                    color: primaryColor,),
                    hintText: 'E-mail',
                    border: InputBorder.none
                    ),
                ),
              ),
            ), // Added closing parenthesis here
          ),
         const Padding(
            padding: EdgeInsets.only(bottom: 0, left: 32, top: 0, right: 32),
          child:
            TextField(
              obscureText: true,
              style: TextStyle(color: primaryColor),
              decoration: InputDecoration(
                icon: ImageIcon(AssetImage('assets/icons/key.png'), 
                color: primaryColor,),
                hintText: 'Senha'
                ),
            ), // Added closing parenthesis here
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0, left: 32, top: 40, right: 32),
            child: TextButton(
                onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: primaryColor,
                minimumSize: Size(size.width, 48)

              ),
              child: const Text('Login')
              ),
          ),
        const Padding(
        padding: EdgeInsets.only(bottom: 0, left: 0, top: 24, right: 0),
        child: Text('Não possui conta?', style: TextStyle(fontSize: 14, 
        fontWeight: FontWeight.w400, color: grayColor),),
        ),
          const Text('Faça o cadastro agora', style: TextStyle(fontSize: 14, 
        fontWeight: FontWeight.bold, color: primaryColor,
        decoration: TextDecoration.underline),)
        ],
      ),
      ),
    );
  }
  
  
}