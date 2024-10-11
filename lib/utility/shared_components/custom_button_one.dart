import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class CustomButtonOne extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  final Color? bg;
  const CustomButtonOne({super.key, required this.title, required this.onClick, this.bg});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(360),
          color: bg ?? const Color(AppColor.secondaryColor)
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
