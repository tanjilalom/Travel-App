import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    super.key,
    required this.title,
    required this.controller,
    this.icon,
    this.helperText,
    this.counterText,
  });

  final String title;
  final String? helperText;
  final String? counterText;
  final IconData? icon;

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.blueAccent,
      controller: controller,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        counterText: counterText,
        counterStyle: const TextStyle(color: Colors.blue),
        helperText: helperText,
        hintText: title,
        suffixIcon: Icon(icon),
        contentPadding: const EdgeInsets.fromLTRB(15, 15, 8, 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
