import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/resources/dynamicTheme/styleManager.dart';
import 'package:islamic_app/widget/sharedTextStyle.dart';
import 'package:islamic_app/widget/sharedWidget.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: height / 10,
              ),
              SharedTextStyle.mediumGreenText(
                context,
                txt: "العصر",
              ),
              SharedTextStyle.mediumGreenText(
                context,
                txt: "3:00 PM",
              ),
              SizedBox(height: height / 10),
              Row( 
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Icon(Icons.calendar_month_rounded,
                      color: ColorManager.darkGreenColor, size: 15.0),
                   SizedBox(
                    width: 5,
                  ),
                  SharedTextStyle.smallGreenText(
                    context,
                    txt: "2024-08-05",
                  ),
                 
                 
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_on,
                      color: ColorManager.darkGreenColor, size: 15.0),
                    SizedBox(
                    width: 5,
                  ),
                  SharedTextStyle.smallGreenText(
                    context,
                    txt: "mansoura".tr(),
                  ),
                
                  
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Column(
            children: [
              SharedWidget.sharedImage(
                  imgPath: "assets/images/pic1.png",
                  height: imgValue,
                  width: imgValue),
              SharedWidget.sharedButton(context,
                  txt: "salat_times".tr(),
                  color: ColorManager.lightBeigeColor,
                  txtSize: 18.0,
                  width: boxWidth,
                  height: boxHeight),
              SizedBox(
                height: 10,
              ),
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
    double width = ResponsiveBreakpoints.of(context).equals(TABLET)
        ? 3
        : ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? 3.5
            : 2.5;
    double height =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 200.0 : 150.0;
    double imgwidth =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 180.0 : 110.0;
    double imgheight =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 150.0 : 100.0;
  

    return Container(
      height: height,
      width: MediaQuery.of(context).size.width / width,
      decoration: StyleManager.containerStyle(
        color: ColorManager.lightBeigeColor,
      ),
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SharedTextStyle.largeGreenText(
                context,
                txt: title,
              ),
              Spacer()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              SharedWidget.sharedImage(
                  imgPath: imgPath, width: imgwidth, height: imgheight),
            ],
          ),
        ],
      ),
    );
  }
}
