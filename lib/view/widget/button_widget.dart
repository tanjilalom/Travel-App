import 'package:flutter/material.dart';

enum CustomButtonStyle { one, two }

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 40,
    this.width = 120,
    required this.title,
    this.radius = 12.0,
    required this.buttonColor,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
    required this.onTap,
  });

  final double? height;
  final double? width;
  final String title;
  final double? radius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color buttonColor;
  final Color? fontColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius!),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
