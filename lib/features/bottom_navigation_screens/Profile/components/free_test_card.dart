import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class FreeTestCard extends StatelessWidget {
  const FreeTestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    width: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      "images/4b8c66ed988c9748d55bb45b95b5b489.jpg",
                      fit: BoxFit.cover,
                    ),
                  )),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "5 km runing",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.more_vert_rounded,
                                color: Colors.grey,
                                size: 15,
                              ))
                        ],
                      ),
                      const Row(
                        children: [
                          Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.timelapse_outlined,
                                color: Colors.green,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "35 min",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 10),
                              )
                            ],
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.fire_hydrant_alt,
                                color: Colors.orange,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "120 cal",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 10),
                              )
                            ],
                          )),
                        ],
                      ),
                      const Text(
                        "45 min",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
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
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
