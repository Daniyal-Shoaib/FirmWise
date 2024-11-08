import 'package:farmWise/helper/app-colors.dart';
import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final Color ? color;
  final double ? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const CustomText({super.key, required this.text,this.color,this.fontSize,this.fontWeight,this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
        color: color ?? AppColors.lightBlack,
        fontSize: fontSize ?? 23,
        fontWeight: FontWeight.w500,
        fontFamily: 'Railway',
      ),
    );
  }


}
