import 'package:flutter/material.dart';
import 'package:islamic_app/resources/dynamicTheme/colorManager.dart';
import 'package:islamic_app/resources/dynamicTheme/styleManager.dart';
import 'package:islamic_app/widget/sharedWidget/sharedTextStyle.dart';

class CustomCounterBox extends StatefulWidget {
  String defultTimes;
  int totalTimes ;
  String text;
  int duration;

  CustomCounterBox(
      {required this.defultTimes, required this.totalTimes, required this.text, required this.duration});

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
        width: MediaQuery.of(context).size.width ,
        height: MediaQuery.of(context).size.height / 4,
        decoration:
            StyleManager.containerStyle(color: ColorManager.lightBeigeColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
           
            Expanded(
              flex: 2,
              child: Center(child: SharedTextStyle.largeGrayText(context, txt: widget.text))),
            Divider(
              color: ColorManager.grayColor,
              thickness: 0.5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  SharedTextStyle.smallGrayText(context,
                      txt: "   ${widget.totalTimes}  : عدد المرات الكلي "),
                  Spacer(),
                  SharedTextStyle.smallGrayText(context,
                      txt: "عدد التكرار : ${widget.defultTimes} مرات"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
