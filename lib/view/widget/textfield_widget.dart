import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.title,
    required this.controller,
    this.icon,
    this.helperText,
    this.counterText,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.validator,
  });

  final String title;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.blueAccent,
      controller: controller,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        counterText: counterText,
        counterStyle: const TextStyle(color: Colors.blue),
        helperText: helperText,
        hintText: title,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon ?? (icon != null ? Icon(icon) : null),
        contentPadding: const EdgeInsets.fromLTRB(15, 15, 8, 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
