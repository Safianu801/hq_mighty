import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final Icon prefixIcon;
  final IconButton? suffixIcon;
  final bool isObscure;
  const CustomTextField({super.key, this.controller, required this.hintText, required this.prefixIcon, this.suffixIcon, required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 13
      ),
      cursorColor: const Color(AppColor.primaryColor),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(360),
          borderSide: const BorderSide(color: Colors.transparent)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(360),
            borderSide: const BorderSide(color: Colors.transparent)
        ),
        fillColor: const Color(AppColor.secondaryColor).withOpacity(0.5),
        filled: true,
        hintText: hintText,
        prefixIcon: prefixIcon,
        hintStyle: const TextStyle(
          color: Color(AppColor.primaryColor)
        ),
        prefixIconColor: const Color(AppColor.primaryColor),
        suffixIconColor: const Color(AppColor.primaryColor),
        suffixIcon: suffixIcon
      ),
    );
  }
}
