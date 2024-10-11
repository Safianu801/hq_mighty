import 'package:flutter/material.dart';

import '../../../../../utility/constants/app_color.dart';
import '../../../../../utility/shared_components/app_bar_back_button.dart';
import '../../../../../utility/shared_components/custom_button_one.dart';

class EnduranceCheckScreen extends StatefulWidget {
  const EnduranceCheckScreen({super.key});

  @override
  State<EnduranceCheckScreen> createState() => _EnduranceCheckScreenState();
}

class _EnduranceCheckScreenState extends State<EnduranceCheckScreen> {
  String endurance = "";
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
              "How do you feel after at least 1 hour of training?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                setState(() {
                  endurance = "Build Muscles";
                });
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: endurance == "Build Muscles" ? const Color(AppColor.secondaryColor) : Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                setState(() {
                  endurance = "Keep Fit";
                });
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: endurance == "Keep Fit" ? const Color(AppColor.secondaryColor) : Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                setState(() {
                  endurance = "Loose Weight";
                });
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: endurance == "Loose Weight" ? const Color(AppColor.secondaryColor) : Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            const Spacer(),
            CustomButtonOne(title: "NEXT", onClick: () {}),
          ],
        ),
      ),
    );
  }
}
