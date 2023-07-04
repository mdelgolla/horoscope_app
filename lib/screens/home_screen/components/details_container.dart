import 'package:flutter/material.dart';
import 'package:horoscope_app/screens/home_screen/components/edit_icon.dart';
import 'package:horoscope_app/screens/home_screen/components/user_data_row.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class DetailContainer extends StatelessWidget {
  final String? title;
  final Widget? bodyContainer;
  const DetailContainer({Key? key, this.title,this.bodyContainer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        color: AppStyles.colors.container.infoCard,
        borderRadius: BorderRadius.all(Radius.circular(
            AppStyles.sizeUtils.sizes.cornerRadius)),
      ),
      child: Padding(
        padding:  EdgeInsets.all(AppStyles.sizeUtils.sizes.commonPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(title??"",style: AppStyles.textStyles.text.leadingText,),
                Spacer(),
                EditIcon()
              ],
            ),
            bodyContainer??Container()
            // Text("Add in your your to help others know you better", style: AppStyles.textStyles.text.descriptionText,),
            // UserDataRow(label: "Birthday",value: "28/08/1995",),
            // UserDataRow(label: "Birthday",value: "28/08/1995",),
            // UserDataRow(label: "Birthday",value: "28/08/1995",),
            // UserDataRow(label: "Birthday",value: "28/08/1995",),
            // UserDataRow(label: "Birthday",value: "28/08/1995",),
          ],
        ),
      ),
    );
  }
}
