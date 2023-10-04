import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/widget/sharedTextStyle.dart';
import 'package:islamic_app/widget/sharedWidget.dart';
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SharedTextStyle.largeGreenText(
                context,
                txt: name,
              ),
              Row(
                children: [
                  SharedTextStyle.smallGrayText(
                    context,
                    txt: numberOfGuza,
                  ),
                  SharedTextStyle.smallGrayText(
                    context,
                    txt: " - عدد الايات ($numberOfAyah) ",
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          SharedWidget.volumIcon(),
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
    double imgShape =
        ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 30.0 : 20.0;

    return Row(
      children: [
        SharedTextStyle.mediumGreenText(context, txt: ayah),
        SizedBox(
          width: 10,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SharedWidget.sharedImage(
                imgPath: "assets/images/ayahicon.png",
                width: imgShape,
                height: imgShape),
            SharedTextStyle.smallGreenText(context, txt: number.toString())
          ],
        ),
      ],
    );
  }
}
