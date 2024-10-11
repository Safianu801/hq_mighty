import 'package:flutter/material.dart';
import 'package:myti_hq/features/auth/screens/registration_screen.dart';

class CustomButtonTwo extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  const CustomButtonTwo({super.key, required this.onClick, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 0.6, color: Colors.white)
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12
            ),
          ),
        ),
      ),
    );
  }
}
