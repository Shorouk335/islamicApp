import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/resources/dynamicTheme/styleManager.dart';
import 'package:islamic_app/widget/sharedWidget/sharedTextStyle.dart';
import 'package:islamic_app/widget/sharedWidget/sharedWidget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomMainBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 250.0 : 150.0;

    double imgValue =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 200.0 : 100.0;
    double boxWidth =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 250.0 : 150.0;
    double boxHeight =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 40.0 : 35.0;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration:
          StyleManager.containerStyle(color: ColorManager.lightBlueColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SharedWidget.sharedImage(
                  imgPath: "assets/images/pic1.png",
                  height: imgValue,
                  width: imgValue),
              SharedWidget.sharedButton(context,
                  txt:"hi".tr(),
                  color: ColorManager.lightBeigeColor,
                  txtSize: 18.0,
                  width: boxWidth,
                  height: boxHeight),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 5,
              ),
              SharedTextStyle.largeGreenText(
                context,
                txt: "الصلاة القادمة",
              ),
                SizedBox(
                height:  height/10,
              ),
              SharedTextStyle.mediumGreenText(
                context,
                txt: "العصر",
              ),
              SharedTextStyle.mediumGreenText(
                context,
                txt: "3:00 PM",
              ),
              SizedBox(height: height/10),
              Row(
                children: [
                  SharedTextStyle.smallGreenText(
                    context,
                    txt: "2024-08-05",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.calendar_month_rounded,
                      color: ColorManager.darkGreenColor, size: 15.0)
                ],
              ),
              Row(
                children: [
                  SharedTextStyle.smallGreenText(
                    context,
                    txt: "Mansoura",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.location_on,
                      color: ColorManager.darkGreenColor, size: 15.0),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCategpryBox extends StatelessWidget {
  String title;
  String imgPath;
  CustomCategpryBox({super.key, required this.title, required this.imgPath});
  @override
  Widget build(BuildContext context) {
    double width =
        ResponsiveBreakpoints.of(context).equals(TABLET) ? 3 :  ResponsiveBreakpoints.of(context).largerThan(TABLET) ?3.5 :2.5;
    double height =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 200.0 : 150.0;
    double imgwidth =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 180.0 : 150.0;
    double imgheight =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 150.0 : 110.0;
    double imgPadding =
        ResponsiveBreakpoints.of(context).equals(TABLET) ? 80.0 : ResponsiveBreakpoints.of(context).largerThan(TABLET)? 150.0: 30.0;

    return Container(
      height: height,
      width: MediaQuery.of(context).size.width / width,
      decoration: StyleManager.containerStyle(
        color: ColorManager.lightBeigeColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: SharedTextStyle.largeGreenText(
              context,
              txt: title,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                right: imgPadding,
              ),
              child: SharedWidget.sharedImage(
                  imgPath: imgPath, width: imgwidth, height: imgheight))
        ],
      ),
    );
  }
}
