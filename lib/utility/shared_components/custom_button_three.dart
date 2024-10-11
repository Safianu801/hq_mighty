import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class CustomButtonThree extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  const CustomButtonThree({super.key, required this.onClick, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(AppColor.primaryColor),
            borderRadius: BorderRadius.circular(360),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 12
            ),
          ),
        ),
      ),
    );
  }
}
