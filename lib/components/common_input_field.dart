import 'package:flutter/material.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class CommonInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextInputType? textInputType;

  const CommonInputField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.textInputType
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: AppStyles.textStyles.text.normalText,
        validator: validator,
        keyboardType: textInputType,
        decoration: InputDecoration(
          // labelText: labelText,
          hintText: hintText,
          hintStyle: AppStyles.textStyles.text.hintText,
          filled: true,
          fillColor: Colors.white.withAlpha(6),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
          // contentPadding: EdgeInsets.symmetric(
          //   vertical: 16.0,
          //   horizontal: 12.0,
          // ),
        ),
      ),
    );
  }
}
