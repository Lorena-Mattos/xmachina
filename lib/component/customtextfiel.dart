import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textHint,
    required this.iconPath,
    this.obscureText = false,
  });

  // ignore: prefer_typing_uninitialized_variables
  final textHint;
  final String iconPath;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: size.width,
          maxWidth: size.width,
          maxHeight: 40,
          minHeight: 40
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: primaryColor))
        ),
        child: TextField(
          obscureText: obscureText,
          style: const TextStyle(color: primaryColor),
          decoration: InputDecoration(
              icon: ImageIcon(AssetImage(iconPath),
                color: primaryColor,),
              hintText: textHint,
              border: InputBorder.none
          ),
        ),
      ),
    );
  }
}