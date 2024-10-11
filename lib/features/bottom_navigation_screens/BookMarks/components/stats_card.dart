import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String data;
  final String value;
  final IconData dataIcon;
  const StatsCard({super.key, required this.bgColor, required this.title, required this.data, required this.value, required this.dataIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor.withOpacity(0.2)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: bgColor,
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Icon(dataIcon, color: Colors.white, size: 20,),
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data, style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                Text(value, style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
