import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/widget/sharedWidget/sharedTextStyle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomSalatTimeBox extends StatelessWidget { 
  bool active  ;
  String? title;
  String? time;
  CustomSalatTimeBox({super.key, required this.title, required this.time ,required this.active });
  @override
  Widget build(BuildContext context) { 
       double paddingValue =  ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 8.0 : 5.0;
       double height =  ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 80.0 : 50.0 ;
    return Container(
      height: height ,
      padding:  EdgeInsets.only(left: paddingValue, right:paddingValue),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: active? ColorManager.lightBlueColor : ColorManager.lightBeigeColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.volume_up , color: ColorManager.darkGreenColor,)),
          SharedTextStyle.mediumGreenText(context,txt: time,),
          const Spacer(),
          SharedTextStyle.mediumGreenText(context,txt: title,),]
      ),
    );
  }
}
