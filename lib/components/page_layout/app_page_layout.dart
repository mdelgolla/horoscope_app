import 'package:flutter/material.dart';
import 'package:horoscope_app/components/page_layout/leading_icon.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class AppPageLayout extends StatelessWidget {
  final String? title;
  final bool showLeading;
  final Widget body;
  final VoidCallback? leadingButtonAction;
  final bool showLoading;

  const AppPageLayout(
      {Key? key,
      this.title,
      this.showLeading = false,
      this.leadingButtonAction,
      this.showLoading = false,
      required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppStyles.colors.container.background,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: showLeading
              ? LeadingIcon(
                  onPressed: leadingButtonAction,
                )
              : null,
          leadingWidth: showLeading ? 100 : null,
          title: Text(title ?? ""),
          backgroundColor: Colors.transparent,
          // Set app bar background color to transparent
          elevation: 0, // Remove app bar elevation
        ),
        body: Stack(
          children: [
            body,
            if (showLoading)
              Container(
                color: Colors.black.withOpacity(0.5),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
