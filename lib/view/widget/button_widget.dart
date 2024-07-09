import 'package:flutter/material.dart';

enum CustomButtonStyle{one,two}

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
        required this.isBorder,
        required this.onTap,
        required this.buttonStyle,
        this.height = 40,
        this.width = 120,
        this.buttonColor = Colors.black,
        this.title,
        this.icon,
        this.iconWidget,
        this.isPrefixIcon,
        this.isSuffixIcon,
        this.radius = 10,
        this.padding = 1,
        this.iconSize = 12,
        this.fontSize = 12,
        this.fontWeight,
        this.iconColor = Colors.white,
        this.borderColor = Colors.white,
        this.iconSpace = 5,
        this.borderWidth = 1,
        this.fontColor = Colors.white,
      });

  final double? height;
  final double? width;
  final double? radius;
  final double? iconSize;
  final double? fontSize;
  final Color? buttonColor;
  final Color? iconColor;
  final Color? fontColor;
  final Color? borderColor;
  final String? title;
  final FontWeight? fontWeight;
  final bool? isPrefixIcon;
  final bool? isSuffixIcon;
  final bool isBorder;
  final IconData? icon;
  final double? padding;
  final double? borderWidth;
  final double? iconSpace;
  final CustomButtonStyle buttonStyle;
  final VoidCallback onTap;
  final Widget? iconWidget;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding!),
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: isBorder == true ? Border.all(color: borderColor!,width: borderWidth!) : null,
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius!),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonStyle == CustomButtonStyle.one ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isPrefixIcon == true ? iconWidget ?? Icon(icon, size: iconSize, color: iconColor) : const SizedBox(),
                SizedBox(width: isPrefixIcon == true && icon != null ? iconSpace : 0),
                title == null ? icon == null ? const SizedBox() : iconWidget ?? Icon(icon, size: iconSize, color: iconColor) : Text(title!, style: TextStyle(color: fontColor, fontSize: fontSize, fontWeight: fontWeight)),
                SizedBox(width: isSuffixIcon == true && icon != null ? iconSpace : 0),
                isSuffixIcon == true ? iconWidget ?? Icon(icon, size: iconSize, color: iconColor) : const SizedBox(),
              ],
            ) : const SizedBox(),
            buttonStyle == CustomButtonStyle.two ? icon == null ? const SizedBox() : iconWidget ?? Icon(icon, size: iconSize, color: iconColor): const SizedBox(),
            SizedBox(height: buttonStyle == CustomButtonStyle.two && title != null && icon != null ? iconSpace : 0),
            buttonStyle == CustomButtonStyle.two ? title == null ? const SizedBox() : Text(title!,style: TextStyle(color: fontColor, fontSize: fontSize, fontWeight: fontWeight)) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}