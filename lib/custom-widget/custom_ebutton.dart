import 'package:farmWise/helper/app-colors.dart';
import 'package:flutter/material.dart';

class CustomEButton extends StatelessWidget {
  const CustomEButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
  });

  final String text;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Set the rounded corners here
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? AppColors.greenColor,
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontFamily: fontFamily ?? 'Railway',
        ),
      ),
    );
  }
}
