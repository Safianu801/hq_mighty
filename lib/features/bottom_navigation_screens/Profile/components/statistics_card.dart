import 'package:flutter/material.dart';

class StatisticsCard extends StatelessWidget {
  final String title;
  final String data;
  const StatisticsCard({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          data,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}
