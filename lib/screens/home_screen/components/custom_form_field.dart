import 'package:flutter/cupertino.dart';
import 'package:horoscope_app/components/common_input_field.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController textEditingController;

  const CustomFormField(
      {Key? key,
      required this.label,
      required this.hint,
      required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppStyles.sizeUtils.sizes.commonPadding),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Text(
                  label,
                  style: AppStyles.textStyles.text.hintText,
                ),
                Text(
                  ":",
                  style: AppStyles.textStyles.text.hintText,
                ),
                SizedBox(width: 4),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: CommonInputField(
              controller: textEditingController,
              hintText: hint,
            ),
          )
        ],
      ),
    );
  }
}
