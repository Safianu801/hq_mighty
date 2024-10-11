import 'package:flutter/material.dart';

import '../../../../utility/constants/app_color.dart';

class DailyTaskCardStyle extends StatelessWidget {
  const DailyTaskCardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
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
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.asset("images/1fe44dfa95d953f19cfaca55f3b690c4.jpg", fit: BoxFit.cover,),
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
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    SizedBox(height: 10,),
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
              width: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.red.withOpacity(0.8))
              ),
              child: const Icon(Icons.play_arrow_rounded, color: Colors.red, size: 15,),
            )
          ],
        ),
      ),
    );
  }
}
