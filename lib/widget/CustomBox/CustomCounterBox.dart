import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/resources/dynamicTheme/styleManager.dart';
import 'package:islamic_app/widget/sharedTextStyle.dart';

class CustomCounterBox extends StatefulWidget {
  String defultTimes = "";
  int totalTimes;
  String text;
  int duration;
  bool tasbeh ;

  CustomCounterBox({
    required this.tasbeh,
    required this.defultTimes,
    required this.totalTimes,
    required this.text,
    required this.duration,
  });

  @override
  State<CustomCounterBox> createState() => _CustomCounterBoxState();
}

class _CustomCounterBoxState extends State<CustomCounterBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.totalTimes++;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / (widget.tasbeh? 6:4),
        decoration:
            StyleManager.containerStyle(color: ColorManager.lightBeigeColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 2,
                child: Center(
                    child: SharedTextStyle.largeGrayText(context,
                        txt: widget.text))),
             (!widget.tasbeh)?
            Divider(
              color: ColorManager.grayColor,
              thickness: 0.5,
            ): SizedBox(),
            
            Expanded(
              flex: 1,
              child: Row(
                children: [
                   (!widget.tasbeh)?
                  SharedTextStyle.mediumGreenText(context,
                      txt: "عدد التكرار : ${widget.defultTimes} مرات"):SizedBox(),
                  Spacer(),
                  SharedTextStyle.mediumGreenText(context,
                      txt: "عدد المرات الكلي : ${widget.defultTimes} مرة"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
