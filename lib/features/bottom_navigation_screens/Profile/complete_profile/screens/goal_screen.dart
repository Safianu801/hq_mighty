import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/complete_profile/screens/endurance_check_screen.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

import '../../../../../utility/shared_components/app_bar_back_button.dart';
import '../../../../../utility/shared_components/custom_button_one.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  String goal = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.black,
        leading: AppBarBackButton(context: context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const Text(
              "What's your main goal",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                setState(() {
                  goal = "Build Muscles";
                });
              },
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: goal == "Build Muscles" ? const Color(AppColor.secondaryColor) : Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                setState(() {
                  goal = "Keep Fit";
                });
              },
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: goal == "Keep Fit" ? const Color(AppColor.secondaryColor) : Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                setState(() {
                  goal = "Loose Weight";
                });
              },
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: goal == "Loose Weight" ? const Color(AppColor.secondaryColor) : Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            const Spacer(),
            CustomButtonOne(title: "NEXT", onClick: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EnduranceCheckScreen()));
            }),
          ],
        ),
      ),
    );
  }
}
