import 'package:avatar_glow/avatar_glow.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/widget/sharedTextStyle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CounterBox extends StatefulWidget {
  const CounterBox({super.key});

  @override
  State<CounterBox> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CounterBox> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      repeat: true,
      glowCount: 2,
      glowRadiusFactor: 0.2,
      glowColor: ColorManager.lightGreenColor,
      child: InkWell(
        onTap: () {
          setState(() {
            counter++;
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: ColorManager.lightGreenColor,
              radius: ResponsiveBreakpoints.of(context).equals(MOBILE)
                  ? 65.0
                  : 80.0,
              child: Center(
                  child: SharedTextStyle.LargeWhiteText(context,
                      txt: (counter == 0
                          ? "click_here".tr()
                          : counter.toString()))),
            )
          ],
        ),
      ),
    );
  }
}

// static Widget Counter(
//   BuildContext context, {
//   required int duration,
// }) {
//   final CountDownController controller = CountDownController();
//   bool isPase = false;
//   bool start = false;
//   return InkWell(
//     onTap: () {
//       if (start) {
//         if (isPase) {
//           controller.resume();
//           Future.delayed(Duration(milliseconds: 1200), () {
//             controller.pause();
//           });
//         }
//       } else {
//         controller.start();
//         controller.pause();
//         start = true;
//         isPase = true;
//       }
//     },
//     child: CircularCountDownTimer(
//       duration: duration,
//       initialDuration: 0,
//       controller: controller,
//       width: MediaQuery.of(context).size.width / 2,
//       height: MediaQuery.of(context).size.height / 4,
//       ringColor: Colors.grey[100] ?? Colors.grey,
//       ringGradient: null,
//       fillColor: ColorManager.darkGreenColor,
//       fillGradient: null,
//       backgroundColor: ColorManager.lightBlueColor,
//       backgroundGradient: null,
//       strokeWidth: 15.0,
//       strokeCap: StrokeCap.round,
//       textStyle: TextStyle(
//           fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
//       textFormat: CountdownTextFormat.S,
//       isReverse: false,
//       isReverseAnimation: false,
//       isTimerTextShown: true,
//       autoStart: false,
//       timeFormatterFunction: (defaultFormatterFunction, duration) {
//         if (duration.inMilliseconds == 0) {
//           return "ابدا";
//         } else {
//         return Function.apply(defaultFormatterFunction, [duration]);
//          }
//       },
//     ),
//   );
// }
