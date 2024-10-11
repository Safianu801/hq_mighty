import 'package:flutter/material.dart';

import '../../../../utility/constants/app_color.dart';

class BarStatsTwo extends StatefulWidget {
  const BarStatsTwo({super.key});

  @override
  State<BarStatsTwo> createState() => _BarStatsTwoState();
}

class _BarStatsTwoState extends State<BarStatsTwo> {
  String selectedDay = "SUN";
  final daysOfTheWeek = [
    "SUN",
    "MON",
    "TUE",
    "WED",
    "THURS",
    "FRI",
    "SAT",
  ];
  List<double> daysValue = [
    30,
    60,
    26,
    90,
    15,
    78,
    100,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(AppColor.primaryColor).withOpacity(0.6),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 8, bottom: 5),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CALORIES", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("WEEKLY AVERAGE", style: TextStyle(color: Colors.grey, fontSize: 14),),
                      Text("102 CAL", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  for (int i = 0; i < 7; i++)
                    BarStatsBar(value: daysValue[i], day: daysOfTheWeek[i], bgColor: selectedDay == daysOfTheWeek[i] ? const Color(AppColor.secondaryColor) : Colors.grey,onclick: () {
                      setState(() {
                        selectedDay = daysOfTheWeek[i];
                      });
                    },),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BarStatsBar extends StatelessWidget {
  final double value;
  final String day;
  final VoidCallback onclick;
  final Color bgColor;
  const BarStatsBar({super.key, required this.value, required this.day, required this.onclick, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: GestureDetector(
        onTap: onclick,
        child: Column(
          children: [
            Container(
              height: value,
              width: 38,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(13)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              day,
              style: const TextStyle(
                  color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}