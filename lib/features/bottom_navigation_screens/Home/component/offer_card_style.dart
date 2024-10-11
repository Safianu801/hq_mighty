import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Home/screens/offer_view_screen.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class OfferCardStyle extends StatelessWidget {
  const OfferCardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OfferViewScreen()));
        },
        child: Container(
          height: 300,
          width: 230,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Image.asset("images/2f9ce6e8f7df7e041ccefcb4c2b97d83.jpg", fit: BoxFit.cover,),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 85,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // color: Colors.white.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(AppColor.cardColor).withOpacity(0.4),
                            blurRadius: 30,
                            spreadRadius: 40
                        )
                      ]
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(AppColor.cardColor).withOpacity(0.9),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(AppColor.cardColor).withOpacity(0.9),
                            blurRadius: 30,
                            spreadRadius: 40
                        )
                      ]
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    // color: Colors.white.withOpacity(0.9),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(AppColor.cardColor).withOpacity(0.9),
                            blurRadius: 30,
                            spreadRadius: 40
                        )
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Body Building",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    const Text(
                      "full body workout",
                      style: TextStyle(
                        color: Color(AppColor.primaryColor),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.green),
                            borderRadius: BorderRadius.circular(360),
                            color: Colors.green.withOpacity(0.2)
                          ),
                          child: const Center(child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.timelapse_outlined, color: Colors.green, size: 15,),
                                SizedBox(width: 5,),
                                Text(
                                  "35 min",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 10
                                  ),
                                )
                              ],
                            ),
                          )),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.orange),
                            borderRadius: BorderRadius.circular(360),
                            color: Colors.orange.withOpacity(0.2)
                          ),
                          child: const Center(child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.fire_hydrant_alt, color: Colors.orange, size: 15,),
                                SizedBox(width: 5,),
                                Text(
                                  "120 cal",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 10
                                  ),
                                )
                              ],
                            ),
                          )),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
