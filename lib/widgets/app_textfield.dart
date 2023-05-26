import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.keyboardType,
    this.hideText = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final bool hideText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20, right: 20),
      child: TextField(
        obscureText: hideText,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          labelText: labelText,
        ),
      ),
    );
  }
}
