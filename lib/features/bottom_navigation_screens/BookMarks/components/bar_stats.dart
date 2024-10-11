import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class BarStats extends StatefulWidget {
  const BarStats({super.key});

  @override
  State<BarStats> createState() => _BarStatsState();
}

class _BarStatsState extends State<BarStats> {
  final daysOfTheWeek = [
    "S",
    "M",
    "T",
    "W",
    "T",
    "F",
    "S",
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
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < MediaQuery.of(context).size.width / 15; i++)
                    Container(
                      height: 2,
                      width: 3,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5)
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 40,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < 7; i++)
                BarStatsBar(value: daysValue[i], day: daysOfTheWeek[i]),
            ],
          ),
        ],
      ),
    );
  }
}


class BarStatsBar extends StatelessWidget {
  final double value;
  final String day;

  const BarStatsBar({super.key, required this.value, required this.day});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 8,
          decoration: BoxDecoration(
              color: const Color(AppColor.primaryColor).withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: value,
                  width: 8,
                  decoration: BoxDecoration(
                      color: const Color(AppColor.secondaryColor),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
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
    );
  }
}
