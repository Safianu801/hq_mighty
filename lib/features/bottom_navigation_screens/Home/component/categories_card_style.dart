import 'package:flutter/material.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

class CategoriesCardStyle extends StatefulWidget {
  const CategoriesCardStyle(
      {super.key,});

  @override
  State<CategoriesCardStyle> createState() => _CategoriesCardStyleState();
}

class _CategoriesCardStyleState extends State<CategoriesCardStyle> {
  List cats = [
    "All",
    "Free",
    "Basic",
    "Male",
    "Female",
    "Yoga",
    "Gym",
    "Fitness",
    "Run"
  ];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured Categories",
                style: TextStyle(
                    color: Color(AppColor.primaryColor),
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < cats.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 1,
                                  color: isSelected == cats[i]
                                      ? const Color(AppColor.secondaryColor)
                                      : Colors.transparent)),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        cats[i],
                        style: TextStyle(
                            color: isSelected == cats[i]
                                ? const Color(AppColor.secondaryColor)
                                : const Color(AppColor.primaryColor),
                            fontSize: 12
                        ),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),

      ],
    );
  }
}
