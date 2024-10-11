import 'package:flutter/material.dart';

class AppBarBackButton extends StatefulWidget {
  final BuildContext context;
  const AppBarBackButton({super.key, required this.context});

  @override
  State<AppBarBackButton> createState() => _AppBarBackButtonState();
}

class _AppBarBackButtonState extends State<AppBarBackButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(widget.context);
      },
      child: Row(
        children: [
          Container(
            height: 23,
            width: 23,
            decoration: const BoxDecoration(
              color: Colors.transparent
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: SizedBox(
                height: 15,
                width: 15,
                child: Image.asset("images/feather_corner_down_left.png", color: Colors.grey,),
              ),
            ),
          ),
          const Text(
            "back",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}
