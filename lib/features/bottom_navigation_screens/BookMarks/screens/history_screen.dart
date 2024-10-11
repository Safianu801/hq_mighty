import 'package:flutter/material.dart';
import 'package:myti_hq/utility/shared_components/app_bar_back_button.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.hourglass_empty,
              color: Colors.grey,
              size: 30,
            ),
            Text(
              "No History Yet!",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              "Seams like you've not made any purchase yet, export our services and find the one that best suits you",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
