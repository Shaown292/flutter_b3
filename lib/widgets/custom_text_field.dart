import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  final String hintText;
  final Widget? prefixWidget;
  final bool obscureText;

  const CustomTextField(
      {super.key, required this.controller, required this.hintText, this.prefixWidget, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
          fontSize: 18,
          color: Colors.red
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 18
          ),

          fillColor: Colors.grey[50],
          filled: true,
          prefixIcon: prefixWidget,

          enabledBorder: OutlineInputBorder(

          ),
          focusedBorder: OutlineInputBorder(

          )
      ),
    );
  }
}
