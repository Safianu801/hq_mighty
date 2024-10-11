import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/BookMarks/components/bar_stats_two.dart';
import 'package:myti_hq/features/bottom_navigation_screens/BookMarks/components/currently_taken_card_style.dart';
import 'package:myti_hq/features/bottom_navigation_screens/BookMarks/components/yet_to_start_card.dart';
import 'package:myti_hq/features/bottom_navigation_screens/BookMarks/screens/history_screen.dart';
import 'package:myti_hq/features/bottom_navigation_screens/BookMarks/screens/overview_screen.dart';
import 'package:myti_hq/utility/constants/app_color.dart';
import 'package:myti_hq/utility/shared_components/circle_progress_indicator.dart';

class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  State<BookMarkScreen> createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        title: const Text("Bookmark", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HistoryScreen()));
          }, icon: const Icon(Icons.history, color: Colors.white,), tooltip: "history",)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "#Yet to take",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "view all",
                          style: TextStyle(
                              color: Color(AppColor.secondaryColor),
                              fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 10; i++) const YetToStartCard()
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(AppColor.primaryColor).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Weekly Progress",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Keep track of all your paid instructs",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OverviewScreen()));
                            },
                            child: Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: const Color(AppColor.secondaryColor),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Center(
                                child: Text(
                                  "View",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RangeCircleProgressIndicator(
                                  percent: 0.5, range: 0.9, oColor: Colors.orange, iColor: const Color(AppColor.secondaryColor),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                      ),
                                      const Text(
                                        "progress",
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Colors.orange
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                          color: const Color(AppColor.secondaryColor),
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                      ),
                                      const Text(
                                        "done",
                                        style: TextStyle(
                                          fontSize: 8,
                                          color: Color(AppColor.secondaryColor)
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("#Yet To Finish", style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),),
                  GestureDetector(child: const Text("view all", style: TextStyle(fontSize: 10, color: Color(AppColor.secondaryColor)),)),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            for (int i = 0; i < 4; i++)
              const CurrentlyTakenCardStyle(),
            const SizedBox(height: 10,),
            const BarStatsTwo(),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Image.asset("images/sample_imgOne.jpg", fit: BoxFit.cover,),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Let's know how you feel..",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          const Text(
                            "Take a 2 minute survey and tell us how your body feels, to help us navigate you through your next level healthy body goal",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: const Color(AppColor.primaryColor),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Center(
                              child: Text(
                                "Let's Go!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
