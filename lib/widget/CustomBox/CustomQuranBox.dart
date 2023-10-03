import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/widget/sharedWidget/sharedTextStyle.dart';
import 'package:islamic_app/widget/sharedWidget/sharedWidget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomSuraNameBox extends StatelessWidget { 

  String name;
  int numberOfAyah;
  String numberOfGuza;
  CustomSuraNameBox(
      {required this.name,
      required this.numberOfAyah,
      required this.numberOfGuza});

  @override
  Widget build(BuildContext context) { 
    return Column(
      children: [
        Row(children: [
          SharedWidget.volumIcon(),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  SharedTextStyle.largeGreenText(context,
                    txt: name,
                  ),
                ],
              ),
              Row(
                children: [
                  SharedTextStyle.smallGrayText(context,
                    txt: numberOfGuza,
                  ),
                  SharedTextStyle.smallGrayText(context,
                    txt: " - عدد الايات ($numberOfAyah) ",
                  ),
                ],
              )
            ],
          )
        ]),
        Divider()
      ],
    );
  }
}

class CustomAyah extends StatelessWidget {
  String ayah;
  int number;
  CustomAyah({required this.ayah, required this.number});

  @override
  Widget build(BuildContext context) { 
           double imgShape =  ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 30.0 : 20.0 ;

    return Row(
      children: [
        Stack( 
          alignment: Alignment.center,
          children: [
            SharedWidget.sharedImage(
                imgPath: "assets/images/ayahicon.png", width: imgShape, height: imgShape),
            SharedTextStyle.smallGreenText(context,txt: number.toString())
                 
          ],
        ),
        SizedBox(
          width: 10,
        ),
        SharedTextStyle.mediumGreenText(context,txt: ayah),
      ],
    );
  }
}
