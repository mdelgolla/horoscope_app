import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class EditIcon extends StatelessWidget {
  final VoidCallback? onPressed;
  const EditIcon({Key? key,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.all(10),
        iconSize: 17,
        constraints: const BoxConstraints(minHeight: 17, minWidth: 17),
        onPressed: onPressed,
        icon: Image.asset(AppStyles.assets.editIcon));
  }
}
