import 'package:flutter/material.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class UserDataRow extends StatelessWidget {
  final String label;
  final String value;
  const UserDataRow({Key? key, required this.label,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(label, style:AppStyles.textStyles.text.hintText),
            Text(":",style:AppStyles.textStyles.text.hintText),
            Text(value, style: AppStyles.textStyles.text.normalText,)
          ],
        ),
        SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding,)
      ],
    );
  }
}
