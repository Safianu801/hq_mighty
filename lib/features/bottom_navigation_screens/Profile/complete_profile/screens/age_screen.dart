import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myti_hq/features/bottom_navigation_screens/Profile/complete_profile/screens/goal_screen.dart';
import 'package:myti_hq/utility/constants/app_color.dart';

import '../../../../../utility/shared_components/app_bar_back_button.dart';
import '../../../../../utility/shared_components/custom_button_one.dart';
import '../../../../../utility/shared_components/custom_button_three.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({super.key});

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

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
              "Date of Birth",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
            ),
            const Text(
              "Your date of birth wont be shown on \nyour profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      showDragHandle: true,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 300,
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 200,
                                child: CupertinoDatePicker(
                                  mode: CupertinoDatePickerMode.date,
                                  initialDateTime: _selectedDate,
                                  onDateTimeChanged: (DateTime newDate) {
                                    setState(() {
                                      _selectedDate = newDate;
                                    });
                                  },
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                                child: CustomButtonThree(title: "Save", onClick: (){
                                  Navigator.pop(context);
                                }),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                      color: const Color(AppColor.primaryColor),
                      border: Border.all(width: 2, color: const Color(AppColor.primaryColor)),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Text(
                        "${_selectedDate.year}/${_selectedDate.day}/${_selectedDate.month}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                ),
              ),
            ),
            const Spacer(),
            CustomButtonOne(title: "NEXT", onClick: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GoalScreen()));
            }),
          ],
        ),
      ),
    );
  }
}
