import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;

  void Function()? navigation;

  final String text;
  CustomButton({
    this.navigation,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigation,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          // width: MediaQuery.of(context).size.width - 20,

          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Center(
              child: Text(text,
                  style: TextStyle(
                      fontFamily: "GothamBold",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: textColor))),
        ),
      ),
    );
  }
}
