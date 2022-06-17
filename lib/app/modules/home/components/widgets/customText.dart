import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? fontName;
  double? size;
  String text;
  CustomText({
    required this.text,
    this.size,
    this.fontName = "GothamMedium",
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontName,
        color: Colors.white,
        fontSize: size,
      ),
    );
  }
}
