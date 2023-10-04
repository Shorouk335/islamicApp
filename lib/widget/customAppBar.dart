import 'package:flutter/material.dart';

PreferredSizeWidget CustomAppBar(BuildContext context , {required Widget? widget}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 6),
    child: ClipPath(
      child: Container(
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(50.0),
          //     bottomRight: Radius.circular(50.0)),
          image: DecorationImage(
            image: AssetImage('assets/images/appBar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: widget
        ),
      ),
    ),
  );
}
