import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/resources/dynamicTheme/styleManager.dart';
import 'package:islamic_app/widget/sharedWidget/sharedTextStyle.dart';
import 'package:islamic_app/widget/sharedWidget/sharedWidget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomTodyBox extends StatelessWidget {
  String imgType;
  String title;
  String subTitle;
  String text;

  CustomTodyBox(
      {required this.imgType,
      required this.title,
      required this.subTitle,
      required this.text});

  @override
  Widget build(BuildContext context) {
    double paddingValue =
        ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 15.0 : 8.0;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      padding: EdgeInsets.all(paddingValue),
      decoration:
          StyleManager.containerStyle(color: ColorManager.lightBeigeColor),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SharedTextStyle.mediumGreenText(context, txt: "$title اليوم"),
                SharedTextStyle.smallGrayText(context, txt: subTitle),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: ColorManager.lightGreenColor,
              child: SharedWidget.sharedImage(
                  imgPath: "assets/images/$imgType.png",
                  width: 25,
                  height: 25),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(child: SharedTextStyle.largeGrayText(context, txt: text)),
        Divider(
          color: ColorManager.grayColor,
          height: 5,
          thickness: 0.5,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClickWidget(context,
                  txt: "مشاركة", icon: Icons.share, onTap: () {}),
              VerticalDivider(thickness: 0.5, color: ColorManager.grayColor),
              ClickWidget(context,
                  txt: "قراءة", icon: Icons.menu_book, onTap: () {}),
            ],
          ),
        )
      ]),
    );
  }
}

Widget ClickWidget(BuildContext context,
    {required String txt, required IconData icon, required dynamic onTap}) {
  return InkWell(
    onTap: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SharedTextStyle.mediumGreenText(context, txt: txt),
        SizedBox(
          width: 5,
        ),
        Icon(icon, color: ColorManager.darkGreenColor, size: 15),
      ],
    ),
  );
}
