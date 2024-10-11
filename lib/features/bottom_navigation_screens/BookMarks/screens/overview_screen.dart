import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/BookMarks/components/bar_stats.dart';
import 'package:myti_hq/features/bottom_navigation_screens/BookMarks/components/stats_card.dart';
import 'package:myti_hq/utility/shared_components/app_bar_back_button.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        leadingWidth: 90,
        leading: AppBarBackButton(context: context),
        title: const Text(
          "Overview",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.refresh, color: Colors.grey,))
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: StatsCard(bgColor: Colors.orange, title: "Progress", data: "80%", value: "hourly", dataIcon: Icons.timelapse_outlined,)),
                      SizedBox(width: 10,),
                      Expanded(child: StatsCard(bgColor: Colors.blue, title: "Untouched", data: "4", value: "7hrs", dataIcon: Icons.watch_later_rounded,)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(child: StatsCard(bgColor: Colors.green, title: "Expenses", data: "₦98,000", value: "monthly", dataIcon: Icons.history,)),
                      SizedBox(width: 10,),
                      Expanded(child: StatsCard(bgColor: Colors.red, title: "Calorie", data: "720", value: "keal", dataIcon: Icons.fire_hydrant_alt,)),
                    ],
                  )
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Workout",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "40",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            "min",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Weekly Average",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "30",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            "min",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              BarStats()
            ],
          ),
        ),
      ),
    );
  }
}
