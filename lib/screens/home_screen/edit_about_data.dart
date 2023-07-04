import 'package:flutter/material.dart';
import 'package:horoscope_app/screens/home_screen/components/custom_form_field.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class EditAboutData extends StatefulWidget {
  const EditAboutData({Key? key}) : super(key: key);

  @override
  State<EditAboutData> createState() => _EditAboutDataState();
}

class _EditAboutDataState extends State<EditAboutData> {
  final name = TextEditingController();
  final height = TextEditingController();
  final weight = TextEditingController();

  final List<String> _genderOptions = ["", "Male", "Female", "Other"];
  String _selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppStyles.colors.container.infoCard,
          borderRadius: BorderRadius.all(
              Radius.circular(AppStyles.sizeUtils.sizes.cornerRadius))),
      child: Padding(
        padding:  EdgeInsets.all(AppStyles.sizeUtils.sizes.commonPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "About",
                  style: AppStyles.textStyles.text.leadingText,
                ),
                const Spacer(),
                ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: AppStyles.colors.text.highlightedText,
                        tileMode: TileMode.mirror,
                      ).createShader(bounds);
                    },
                    child: Text(
                      "Save & Update",
                      style: AppStyles.textStyles.text.highlightedText,
                    ))
              ],
            ),
            SizedBox(
              height: AppStyles.sizeUtils.sizes.commonPadding,
            ),
            Row(
              children: [
                Container(
                  height: 57,
                  width: 57,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white10),
                      borderRadius: BorderRadius.all(Radius.circular(17))),
                ),
                SizedBox(
                  width: AppStyles.sizeUtils.sizes.commonPadding,
                ),
                Text(
                  "Add image",
                  style: AppStyles.textStyles.text.textStyle12pt,
                )
              ],
            ),
            Form(
              child: Column(
                children: [
                  CustomFormField(
                      label: "Display Name",
                      hint: "Enter Name",
                      textEditingController: name),
                  CustomFormField(
                      label: "Height",
                      hint: "Add Height",
                      textEditingController: height),
                  CustomFormField(
                      label: "Weight",
                      hint: "Add Weight",
                      textEditingController: weight),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      hintText: 'Select Gender',
                      fillColor: Colors.white.withAlpha(6),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                    ),
                    value: _selectedGender,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedGender = newValue ?? '';
                      });
                    },
                    items: <String>["", "Male", "Female", "Other"]
                        .map((String gender) {
                      return DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select your gender';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
