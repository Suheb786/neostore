import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  bool obscureText;
  final Widget? prefixIcon;
  final String? labelText;
  final int? maxLines;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  void Function()? onTap;
  AutovalidateMode? autoValid;
  int? maxLength;
  CustomTextField({
    this.obscureText = false,
    this.prefixIcon,
    this.maxLines = 1,
    this.suffixIcon,
    this.maxLength,
    this.autoValid,
    this.textCapitalization = TextCapitalization.sentences,
    this.keyboardType,
    this.validator,
    this.labelText,
    this.controller,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 6.0,
        bottom: 6.0,
        right: 30.0,
        left: 30,
      ),
      child: TextFormField(
        obscureText: obscureText,
        maxLines: maxLines,
        textCapitalization: textCapitalization,
        onTap: onTap,
        maxLength: maxLength,
        autovalidateMode: autoValid,
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        cursorHeight: 17,
        cursorColor: Colors.white,
        style: TextStyle(
          fontFamily: "Gotham",
          color: Colors.white,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          counterText: "",
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
          border: const OutlineInputBorder(
            // borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          isDense: true,
          labelText: labelText,
          labelStyle: const TextStyle(
            fontFamily: "Gotham",
            color: Colors.white,
            fontSize: 14,
          ),
          fillColor: Colors.transparent,
          focusedBorder: const OutlineInputBorder(
            // borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(
              color: Colors.white70,
              width: 1.5,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            // borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(
              color: Colors.white70,
              width: 1.5,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            // borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(
              color: Color.fromARGB(195, 104, 21, 21),
              width: 2,
            ),
          ),
          // errorStyle: GoogleFonts.montserrat(
          //     fontSize: 10, color: Colors.white.withOpacity(0.75)),
        ),
      ),
    );
  }
}
