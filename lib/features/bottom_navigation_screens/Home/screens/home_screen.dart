import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Home/component/categories_card_style.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Home/component/daily_task_card_style.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Home/component/offer_card_style.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Notification/notification_screen.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List cats = [
    "All",
    "Free",
    "Basic",
    "Male",
    "Female",
    "Yoga",
    "Gym",
    "Fitness",
    "Run"
  ];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        title: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                color: Color(AppColor.secondaryColor),
                shape: BoxShape.circle
              ),
              child: const Center(
                child: Text(
                  "SM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Sufyan Sani",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12
                  ),
                ),
                Text(
                  "How long are we spending here today!",
                  style: TextStyle(
                    color: Color(AppColor.primaryColor),
                    fontSize: 10
                  ),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NotificationScreen()));
            },
            icon: SizedBox(
              height: 22,
              width: 22,
              child: Image.asset("images/notification-filled.png", color: const Color(AppColor.primaryColor),),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Image.asset("images/441e8559a94328a48d7149fd645eb10b.jpg", fit: BoxFit.cover,),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Start New Goal",
                    style: TextStyle(
                      color: Color(AppColor.primaryColor),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color(AppColor.secondaryColor),
                      fontSize: 12
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 8; i++)
                    const OfferCardStyle()
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const CategoriesCardStyle(),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Daily Task",
                    style: TextStyle(
                        color: Color(AppColor.primaryColor),
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: Color(AppColor.secondaryColor),
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  for (int i = 0; i < 3; i++)
                    const DailyTaskCardStyle()
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(AppColor.primaryColor),
                      offset: Offset(5, 8),
                      blurRadius: 15
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          shape: BoxShape.circle
                        ),
                        child: const Center(
                          child: Icon(Icons.directions_walk_rounded, color: Color(AppColor.primaryColor),),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Summer Challenge 🔥",
                            style: TextStyle(
                              color: Color(AppColor.primaryColor),
                              fontSize: 12
                            ),
                          ),
                          Text(
                            "5km marathon",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(AppColor.primaryColor),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Icon(Icons.double_arrow_rounded, size: 15,),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
