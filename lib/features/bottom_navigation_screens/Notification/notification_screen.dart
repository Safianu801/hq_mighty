import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(automaticallyImplyLeading: true,foregroundColor: Colors.white, backgroundColor: Colors.black, surfaceTintColor: Colors.black,),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Notifications",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
