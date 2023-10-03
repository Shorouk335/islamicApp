import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SharedTextStyle {
  static Widget largeGreenText(BuildContext context ,{required String? txt  }) {
    return Text(
      txt ?? "",
      style: TextStyle(
          color: ColorManager.darkGreenColor,
          fontSize: ResponsiveValue(
                context ,
                conditionalValues: [
                     Condition.equals(name: MOBILE, value: 18.0),
                     Condition.equals(name: TABLET, value: 20.0),
                     Condition.equals(name: DESKTOP, value: 25.0),

                ],
                defaultValue: 18.0,

          ).value,
          fontWeight: FontWeight.bold),
    );
  }  
  static Widget mediumGreenText(BuildContext context ,{required String? txt  }) {
    return Text(
      txt ?? "",
      style: TextStyle(
          color: ColorManager.darkGreenColor,
          fontSize: ResponsiveValue(
                context ,
                conditionalValues: [
                     Condition.equals(name: MOBILE, value: 13.0),
                     Condition.equals(name: TABLET, value: 16.0),
                     Condition.equals(name: DESKTOP, value: 20.0),

                ],
                defaultValue: 13.0,

          ).value,
          fontWeight: FontWeight.bold),
    );
  }

  static Widget smallGreenText(BuildContext context,{required String? txt }) {
    return Text(
      txt ?? "",
      style: TextStyle(
          color: ColorManager.darkGreenColor,
          fontSize:ResponsiveValue(
                context ,
                conditionalValues: [
                     Condition.equals(name: MOBILE, value: 10.0),
                     Condition.equals(name: TABLET, value: 12.0),
                     Condition.equals(name: DESKTOP, value: 14.0),

                ],
                defaultValue: 10.0,

          ).value,
           fontWeight: FontWeight.bold
         ),
    );
  } 
 
   static Widget largeGrayText(BuildContext context ,{required String? txt  }) {
    return Text(
      txt ?? "",
       textAlign: TextAlign.end,
      style: TextStyle(
          color: ColorManager.grayColor,
          fontSize:ResponsiveValue(
                context ,
                conditionalValues: [
                     Condition.equals(name: MOBILE, value: 12.0),
                     Condition.equals(name: TABLET, value: 13.0),
                     Condition.equals(name: DESKTOP, value: 16.0),

                ],
                defaultValue: 12.0,

          ).value,
           
          
          fontWeight: FontWeight.bold),
    );
  } 
    static Widget smallGrayText(BuildContext context ,{String? txt }) {
    return Text(
      txt ?? "",
      style: TextStyle(
          color: ColorManager.grayColor,
          fontSize: ResponsiveValue(
                context ,
                conditionalValues: [
                     Condition.equals(name: MOBILE, value: 10.0),
                     Condition.equals(name: TABLET, value: 12.0),
                     Condition.equals(name: DESKTOP, value: 14.0),

                ],
                defaultValue: 10.0,

          ).value,
         ),
    );
  }
}
