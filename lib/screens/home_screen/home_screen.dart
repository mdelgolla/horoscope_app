import 'package:flutter/material.dart';
import 'package:horoscope_app/components/page_layout/app_page_layout.dart';
import 'package:horoscope_app/screens/home_screen/components/custom_form_field.dart';
import 'package:horoscope_app/screens/home_screen/components/details_container.dart';
import 'package:horoscope_app/screens/home_screen/components/edit_icon.dart';
import 'package:horoscope_app/screens/home_screen/components/user_data_row.dart';
import 'package:horoscope_app/screens/home_screen/edit_about_data.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AppPageLayout(
        showLeading: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppStyles.sizeUtils.sizes.commonPadding),
            child: Column(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    color: AppStyles.colors.container.userDataCard,
                    borderRadius: BorderRadius.all(Radius.circular(
                  AppStyles.sizeUtils.sizes.commonPadding))
                  ),
                  child:  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        EditIcon()
                      ],),
                      const Spacer(),
                      Padding(
                        padding:  EdgeInsets.all( AppStyles.sizeUtils.sizes.commonPadding),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                            child: Text("User123",style: AppStyles.textStyles.text.buttonText,)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding,),
                DetailContainer(
                  title: "About",
                  bodyContainer: Text(
                    "Add in your your to help others know you better",
                    style: AppStyles.textStyles.text.descriptionText,
                  ),
                ),
                SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding,),
                DetailContainer(
                  title: "Interest",
                  bodyContainer: Text(
                    "Add in your interest to find a better match",
                    style: AppStyles.textStyles.text.descriptionText,
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     color: AppStyles.colors.container.infoCard,
                //     borderRadius: BorderRadius.all(Radius.circular(
                //         AppStyles.sizeUtils.sizes.cornerRadius)),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.all(16.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Row(
                //           children: [
                //             Text("About",style: AppStyles.textStyles.text.leadingText,),
                //             Spacer(),
                //             EditIcon()
                //           ],
                //         ),
                //         Text("Add in your your to help others know you better", style: AppStyles.textStyles.text.descriptionText,),
                //         UserDataRow(label: "Birthday",value: "28/08/1995",),
                //         UserDataRow(label: "Birthday",value: "28/08/1995",),
                //         UserDataRow(label: "Birthday",value: "28/08/1995",),
                //         UserDataRow(label: "Birthday",value: "28/08/1995",),
                //         UserDataRow(label: "Birthday",value: "28/08/1995",),
                //       ],
                //     ),
                //   ),
                // ),
                EditAboutData(),
              ],
            ),
          ),
        ));
  }
}
