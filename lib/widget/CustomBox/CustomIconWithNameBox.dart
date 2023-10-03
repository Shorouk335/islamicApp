import 'package:flutter/widgets.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/resources/dynamicTheme/styleManager.dart';
import 'package:islamic_app/widget/sharedWidget/sharedTextStyle.dart';
import 'package:islamic_app/widget/sharedWidget/sharedWidget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomIconWithNameBox extends StatelessWidget{ 
  String imgPath ;
  String name ;
  int number ;
  bool type ;
  CustomIconWithNameBox({required this.imgPath , required this.name , required this.number , required this.type});
  @override
  Widget build(BuildContext context) { 
           double width =  ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 6:3;

    return Container( 
       width: MediaQuery.of(context).size.width/width,
       height: MediaQuery.of(context).size.height/6,
       decoration: StyleManager.containerStyle(color: ColorManager.lightBlueColor),
       child: Column(
        children: [
            SharedWidget.sharedImage(imgPath: imgPath, width: 50, height: 50),
            SharedTextStyle.mediumGreenText(context,txt: name),
            SharedTextStyle.smallGrayText(context,txt: " $number ${type? "ذكر":"دعاء"}" )

        ],
      ),
    );
  }




}
