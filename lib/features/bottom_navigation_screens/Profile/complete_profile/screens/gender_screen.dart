import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/complete_profile/screens/age_screen.dart';
import 'package:myti_hq/utility/constants/app_color.dart';
import 'package:myti_hq/utility/shared_components/custom_button_one.dart';

import '../../../../../utility/shared_components/app_bar_back_button.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  String gender = "";
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
              const Spacer(),
              const Text(
                "What's your gender?",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),
              ),
              const Text(
                "Let us know you better",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey
                ),
              ),
              const SizedBox(height: 50,),
              SizedBox(
                height: 280,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            gender = "Male";
                          });
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                          ),
                          child: Stack(
                            children: [
                              gender == "Male" ? Center(
                                child: Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: const Color(AppColor.secondaryColor),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                              ) : const SizedBox.shrink(),
                              Column(
                                children: [
                                  gender == "Male" ? Image.asset("images/male_img.png",) : Image.asset("images/male_img.png", color: Colors.grey.withOpacity(0.3),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Male ",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: gender == "Male" ? const Color(AppColor.secondaryColor) : Colors.grey,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      gender == "Male" ? Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                            color: Color(AppColor.secondaryColor),
                                            shape: BoxShape.circle
                                        ),
                                        child: const Center(
                                          child: Icon(Icons.check, color: Colors.white, size: 12,),
                                        ),
                                      ) : const SizedBox.shrink()
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            gender = "Female";
                          });
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                          ),
                          child: Stack(
                            children: [
                              gender == "Female" ? Center(
                                child: Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: const Color(AppColor.secondaryColor),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                              ) : const SizedBox.shrink(),
                              Column(
                                children: [
                                  gender == "Female" ? Center(child: Image.asset("images/female_img.png", scale: 6,)) : Center(child: Image.asset("images/female_img.png", scale: 6, color: Colors.grey.withOpacity(0.3),)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Female ",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: gender == "Female" ? const Color(AppColor.secondaryColor) : Colors.grey,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      gender == "Female" ? Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                            color: Color(AppColor.secondaryColor),
                                            shape: BoxShape.circle
                                        ),
                                        child: const Center(
                                          child: Icon(Icons.check, color: Colors.white, size: 12,),
                                        ),
                                      ) : const SizedBox.shrink()
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomButtonOne(title: "Next", onClick: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AgeScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
