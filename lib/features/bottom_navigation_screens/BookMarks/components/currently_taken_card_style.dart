import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class CurrentlyTakenCardStyle extends StatelessWidget {
  const CurrentlyTakenCardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("images/05ba46ae4957ec6a1efad746d54594c2.jpg", fit: BoxFit.cover,),
                  ),
                  const SizedBox(width: 10,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Body Building",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "progress- ",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(AppColor.primaryColor)
                            ),
                          ),
                          Text(
                            "65%",
                            style: TextStyle(
                              color: Color(AppColor.secondaryColor),
                              fontSize: 10
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Center(child: Row(
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
                          )),
                          SizedBox(width: 10,),
                          Center(child: Row(
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
                          )),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 28,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.orange.withOpacity(0.8)),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 12
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
