import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myti_hq/utility/shared_components/custom_button_three.dart';
import '../../auth/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _showButton = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _showButton = true;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // Background image
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Image.asset(
                "images/1f167030a94d35bfb33b9b91b1fc360c.jpg",
                fit: BoxFit.cover,
              ),
            ),

            // Fade-in button after delay
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedOpacity(
                    opacity: _showButton ? 1.0 : 0.0,
                    duration: const Duration(seconds: 1),
                    child: const Text(
                      "VOLUME UP YOUR \nBODY GOALS",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: _showButton ? 1.0 : 0.0,
                    duration: const Duration(seconds: 1),
                    child: Text(
                      "Strength doesn't come from what you can do. It comes from overcoming the things you once thought you couldn't.",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8)
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  AnimatedOpacity(
                    opacity: _showButton ? 1.0 : 0.0,
                    duration: const Duration(seconds: 1),
                    child: CustomButtonThree(onClick: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
                    }, title: "Let's Begin",),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
