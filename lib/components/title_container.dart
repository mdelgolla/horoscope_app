import 'package:flutter/cupertino.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class TitleContainer extends StatelessWidget {
  final String title;
  const TitleContainer({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.textStyles.text.heading,
        ),
        SizedBox(height: AppStyles.sizeUtils.sizes.headingHeight),
      ],
    );
  }
}
