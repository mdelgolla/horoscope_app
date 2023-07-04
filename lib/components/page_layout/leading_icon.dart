import 'package:flutter/material.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class LeadingIcon extends StatelessWidget {
  final VoidCallback? onPressed;

  const LeadingIcon({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppStyles.colors.text.heading,
          ),
          onPressed: () {
            onPressed ?? Navigator.of(context).pop();
          },
        ),
        Text(
          'Back',
          style: AppStyles.textStyles.text.leadingText,
        ),
      ],
    );
  }
}
