import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/complete_profile/screens/gender_screen.dart';

import '../../../../../utility/shared_components/app_bar_back_button.dart';
import '../../../../../utility/shared_components/custom_button_one.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                "Hello!",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
              const Text(
                "I'm your personal coach, here i'm going to be guiding you through completing your profile, i sure hope you are ready",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey
                ),
              ),
              const SizedBox(height: 50,),
              CustomButtonOne(title: "I'm Ready", onClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GenderScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
