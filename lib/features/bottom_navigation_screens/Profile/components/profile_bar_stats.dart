import 'package:flutter/material.dart';

import '../../../../utility/constants/app_color.dart';

class ProfileBarStats extends StatefulWidget {
  const ProfileBarStats({super.key});

  @override
  State<ProfileBarStats> createState() => _ProfileBarStatsState();
}

class _ProfileBarStatsState extends State<ProfileBarStats> {
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
        height: 280,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(AppColor.primaryColor).withOpacity(0.6),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 8, bottom: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("You activity", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_rounded, color: Colors.grey,))
                ],
              ),
              const Spacer(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                ),
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DataColumn(data: "230", title: "Calories"),
                  DataColumn(data: "00:42", title: "Time"),
                  DataColumn(data: "1.2", title: "Kilometers"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DataColumn extends StatelessWidget {
  final String data;
  final String title;
  const DataColumn({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey
          ),
        )
      ],
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