import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/complete_profile/screens/gender_screen.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/complete_profile/screens/welcome_screen.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/components/free_test_card.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/components/profile_bar_stats.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/components/statistics_card.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.login_rounded, color: Colors.red, size: 18,))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      color: Color(AppColor.secondaryColor),
                      shape: BoxShape.circle),
                  child: const Center(
                    child: Text("SM", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),),
                  ),
                ),
                const SizedBox(height: 10,),
                Column(
                  children: [
                    const Text("Sufyan Sani Mohammed", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle
                              ),
                            ),
                          ),
                        ),
                        const Text("Active", style: TextStyle(color: Colors.white, fontSize: 10),),
                      ],
                    ),
                    const Text("safianusani2004@gmail.com", style: TextStyle(color: Colors.grey, fontSize: 13),),
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StatisticsCard(title: "Instructions", data: "12"),
                    StatisticsCard(title: "Expenses", data: "₦98,000,"),
                    StatisticsCard(title: "Completed", data: "8"),
                  ],
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WelcomeScreen()));
                    },
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
                                child: Icon(Icons.percent, color: Color(AppColor.primaryColor),),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Expanded(
                                  child: Text(
                                    "Complete Profile",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "let's know how we can best serve you.",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 12
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 5,
                                  width: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Stack(
                                    children: [
                                      Container(
                                          height: 5,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: const Color(AppColor.secondaryColor),
                                              borderRadius: BorderRadius.circular(10)))
                                    ],
                                  ),
                                )
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
                ),
                const SizedBox(height: 10,),
                Divider(height: 1, color: Colors.grey.withOpacity(0.2),),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Today's Plan",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                for (int i = 0; i < 3; i++)
                  const FreeTestCard(),
                const ProfileBarStats()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
