
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/resources/dynamicTheme/styleManager.dart';
import 'package:islamic_app/widget/sharedWidget/sharedTextStyle.dart';

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

  static Widget Counter(BuildContext context,
      {required int duration, required double height, required double width}) {
    final CountDownController controller = CountDownController();
    bool isPase = false;
    bool start = false;
    return InkWell(
      onTap: () {
        if (start) {
          if (isPase) {
            controller.resume();
            Future.delayed(Duration(milliseconds: 1200), () {
              controller.pause();
            });
          }
        } else {
          controller.start();
          controller.pause();
          start = true;
          isPase = true;
        }
      },
      child: CircularCountDownTimer(
        duration: duration,
        initialDuration: 1,
        controller: controller,
        width: width,
        height: height,
        ringColor: Colors.grey[100] ?? Colors.grey,
        ringGradient: null,
        fillColor: ColorManager.darkGreenColor,
        fillGradient: null,
        backgroundColor: ColorManager.lightBlueColor,
        backgroundGradient: null,
        strokeWidth: 5.0,
        strokeCap: StrokeCap.round,
        textStyle: TextStyle(
            fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
        textFormat: CountdownTextFormat.S,
        isReverse: false,
        isReverseAnimation: false,
        isTimerTextShown: true,
        autoStart: false,
        timeFormatterFunction: (defaultFormatterFunction, duration) {
          // if (duration.inMilliseconds == 0) {
          //   return "ابدا";
          // } else {
          return Function.apply(defaultFormatterFunction, [duration]);
          // }
        },
      ),
    );
  }
}
