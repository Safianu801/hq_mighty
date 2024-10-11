import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';
import 'package:myti_hq/utility/shared_components/custom_button_three.dart';

class OfferViewScreen extends StatefulWidget {
  const OfferViewScreen({super.key});

  @override
  State<OfferViewScreen> createState() => _OfferViewScreenState();
}

class _OfferViewScreenState extends State<OfferViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Stack(
                children: [
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Image.asset("images/4eb411607e454141e579ce310d4a556c.jpg", fit: BoxFit.fill,),
                  ),
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(25)
                    ),
                  )
                ],
              ),
            ),
            const Text(
              "Body Building",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Color(AppColor.primaryColor)
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(25)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "🔥",
                            style: TextStyle(
                                color: Color(AppColor.primaryColor),
                                fontSize: 34,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Full body",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20
                                ),
                              ),
                              Text(
                                "Calories",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(
                        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(25)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Time Laps",
                              style: TextStyle(
                                color: Color(AppColor.primaryColor),
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.timelapse_outlined, color: Colors.green, size: 25,),
                                SizedBox(width: 5,),
                                Text(
                                  "35 min",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                      const SizedBox(height: 10,),
                      Expanded(child: Container(
                        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5), borderRadius: BorderRadius.circular(25)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Focus Zone",
                              style: TextStyle(
                                  color: Color(AppColor.primaryColor),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Full body",
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 20
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                    ],
                  ))
                ],
              ),
            ),
            const SizedBox(height: 20,),
            CustomButtonThree(onClick: (){}, title: "Subscribe")
          ],
        ),
      ),
    );
  }
}
