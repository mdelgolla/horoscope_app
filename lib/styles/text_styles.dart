import 'package:flutter/material.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class AppTextStyles {
  _Text text = _Text();
}

class _Text {
  TextStyle heading = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppStyles.colors.text.heading);

  TextStyle subHeading = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: AppStyles.colors.text.subheading);
  TextStyle buttonText = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: AppStyles.colors.text.heading);
  TextStyle leadingText = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: AppStyles.colors.text.heading);
  TextStyle normalText = TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w500,
      color: AppStyles.colors.text.heading);
  TextStyle normalTextUnderline = TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w500,
      color: AppStyles.colors.text.underlineText,
      decoration: TextDecoration.underline);
  TextStyle descriptionText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: AppStyles.colors.text.description,
  );
  TextStyle hintText = TextStyle(
      fontSize: 13.0, fontWeight: FontWeight.w500, color: Colors.white38);
  TextStyle highlightedText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppStyles.colors.text.heading);
  TextStyle textStyle12pt = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: AppStyles.colors.text.heading);
}
