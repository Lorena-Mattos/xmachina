// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:xmachina/constant/colors.dart';
import 'package:xmachina/util/screenconverter.dart';

import '../component/customtextfiel.dart';

class RegistrarView extends StatefulWidget {
  const RegistrarView({super.key});

  @override
  State<RegistrarView> createState() => _RegistrarViewState();
}

class _RegistrarViewState extends State<RegistrarView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 0, 
              left: 0, 
              top: convertHeight(133, size.height), 
              right: 0),
              child: Image.asset("assets/images/logo.png")
          ),
             Padding(
            padding: EdgeInsets.only(bottom: 0, 
            left: convertWidth(32, size.width), 
            top: convertHeight(56, size.height), 
            right: convertWidth(32, size.width)),
            child:
              const CustomTextField(
                textHint: 'E-mail',
                iconPath: 'assets/icons/envelope.png',
              ), // Added closing parenthesis here
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 0, 
            left: convertWidth(32, size.width), 
            top: convertHeight(24, size.height),
            right: convertWidth(32, size.width)
            ),
            child:
              const CustomTextField(
                textHint: 'Senha',
                iconPath: 'assets/icons/key.png',
                obscureText: true,
              ), // Added closing parenthesis here
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 0, 
            left: convertWidth(32, size.width), 
            top: convertHeight(40, size.height), 
            right: convertWidth(32, size.width),
            ),
            child: TextButton(
                onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: convertHeight(16, size.height), 
                fontWeight: FontWeight.w600
                ),
                foregroundColor: Colors.white,
                backgroundColor: primaryColor,
                minimumSize: Size(size.width, convertHeight(48, size.height))

              ),
              child: const Text('Login')
              ),
          ),
        Padding(
        padding: EdgeInsets.only(bottom: 0, 
        left: 0, 
        top: convertHeight(24, size.height), 
        right: 0),
        child: const Text('Não possui conta?', style: TextStyle(fontSize: 14, 
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

