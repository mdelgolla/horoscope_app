import 'package:flutter/material.dart';
import 'package:horoscope_app/components/page_layout/app_page_layout.dart';
import 'package:horoscope_app/components/common_button.dart';
import 'package:horoscope_app/components/common_input_field.dart';
import 'package:horoscope_app/components/title_container.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _pwController = TextEditingController();
  final _pwConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppPageLayout(
        showLeading: true,
        body: Padding(
          padding: EdgeInsets.all(AppStyles.sizeUtils.sizes.commonPadding),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleContainer(title: "Register"),
                CommonInputField(
                    controller: _emailController, hintText: "Enter Email"),
                SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding),
                CommonInputField(
                    controller: _usernameController, hintText: "Enter Username"),
                SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding),
                CommonInputField(
                    controller: _pwController, hintText: "Create Password"),
                SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding),
                CommonInputField(
                    controller: _pwConfirmController,
                    hintText: "Confirm Password"),
                SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding),
                CommonButton(
                  buttonLabel: "Register",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
