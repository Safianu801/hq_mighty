import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class YetToStartCard extends StatelessWidget {
  const YetToStartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        height: 60,
        width: 150,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withOpacity(0.2)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 60,
                width: 50,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("images/1fe44dfa95d953f19cfaca55f3b690c4.jpg", fit: BoxFit.cover,),
              ),
            )),
            const SizedBox(width: 2,),
            const Expanded(child: SizedBox(
              height: 60,
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "gym title",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.timelapse_outlined, color: Color(AppColor.primaryColor), size: 12,),
                      Text(
                        "12m-30s",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.ac_unit, color: Colors.white, size: 10,),
                      Text(
                        "level-",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "30%",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.yellow
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
