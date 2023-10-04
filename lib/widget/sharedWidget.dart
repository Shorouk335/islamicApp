import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/resources/dynamicTheme/styleManager.dart';
import 'package:islamic_app/widget/sharedTextStyle.dart';


class SharedWidget {
  static Widget sharedImage(
      {required String imgPath,
      required double width,
      required double height}) {
    return Container(
      width: width,
      height: height,
      child: Image(
          image: AssetImage(
            imgPath,
          ),
          fit: BoxFit.cover),
    );
  }

  static Widget sharedButton(BuildContext context,
      {required String txt,
      required Color color,
      required txtSize,
      required double width,
      required double height}) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: width,
          height: height,
          decoration: StyleManager.containerStyle(color: color),
          child: Center(
              child: SharedTextStyle.mediumGreenText(
            context,
            txt: txt,
          ))),
    );
  }

  static Widget volumIcon() {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.volume_up,
          color: ColorManager.darkGreenColor,
        ));
  }
}

