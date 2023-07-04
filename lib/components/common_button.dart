import 'package:flutter/material.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? buttonLabel;
  final bool disabled;
  final TextStyle? labelTextStyle;
  final List<Color>? btnColor;
  final bool isExpanded;
  final Color? borderColor;

  const CommonButton({
    Key? key,
    this.onPressed,
    this.buttonLabel,
    this.btnColor,
    this.disabled = false,
    this.labelTextStyle,
    this.isExpanded = false,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: AppStyles.colors.container.buttonColor),
        borderRadius: BorderRadius.circular(9),
      ),

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.only(left: AppStyles.sizeUtils.sizes.commonPadding, right: AppStyles.sizeUtils.sizes.commonPadding),
            minimumSize: const Size.fromHeight(50),
            side: BorderSide(width: 1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              buttonLabel!,
              style: AppStyles.textStyles.text.buttonText,
            ),
          ),
        ),
      ),
    );
  }
}
