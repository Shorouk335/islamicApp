import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/widget/sharedTextStyle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomTextBox extends StatelessWidget {
  String? title;

  CustomTextBox({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    double width = ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 3 : 2;

    return Container(
      height: title!.length < 25 ? 40.0 : 80.0,
      width: title!.length < 25
          ? MediaQuery.of(context).size.width / width
          : MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(title!.length < 25 ? 5.0 : 0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: ColorManager.lightBeigeColor,
      ),
      child: Center(
        child: SharedTextStyle.mediumGreenText(context, txt: title),
      ),
    );
  }
}
