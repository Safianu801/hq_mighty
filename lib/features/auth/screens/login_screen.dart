import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myti_hq/features/auth/screens/forgot_password_screen.dart';
import 'package:myti_hq/features/auth/screens/registration_screen.dart';
import 'package:myti_hq/utility/shared_components/custom_bottom_navigation_bar.dart';
import 'package:myti_hq/utility/shared_components/custom_button_three.dart';
import 'package:myti_hq/utility/shared_components/custom_text_field.dart';

import '../../../utility/constants/app_color.dart';
import '../../../utility/shared_components/app_bar_back_button.dart';
import '../../../utility/shared_components/custom_button_one.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColor.primaryColorOne),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 430,
              child: Stack(
                children: [
                  Container(
                    height: 330,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(),
                    child: Image.asset(
                      "images/4ac61a943cb93da024ad4bcf47334b61.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          // color: Colors.white.withOpacity(0.5),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(AppColor.primaryColorOne)
                                    .withOpacity(0.4),
                                blurRadius: 30,
                                spreadRadius: 40)
                          ]),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color:
                              const Color(AppColor.primaryColorOne).withOpacity(0.9),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(AppColor.primaryColorOne)
                                    .withOpacity(0.9),
                                blurRadius: 30,
                                spreadRadius: 40)
                          ]),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          // color: Colors.white.withOpacity(0.9),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(AppColor.primaryColorOne)
                                    .withOpacity(0.9),
                                blurRadius: 30,
                                spreadRadius: 40)
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const Text("Welcome Back!", style: TextStyle(
                    color: Color(AppColor.primaryColor,),
                    fontSize: 25
                  ),),
                  const Text(
                    "Please provide your login info, to head back in.",
                    style: TextStyle(
                      color: Color(AppColor.primaryColor),
                      fontSize: 12
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CustomTextField(
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.mail),
                    isObscure: false,
                    controller: emailController,
                  ),
                  const SizedBox(height: 15,),
                  CustomTextField(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    isObscure: isChecked ? true : false,
                    controller: passwordController,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        icon: Icon(isChecked
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined)),
                  ),
                  const SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(AppColor.primaryColor)
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  CustomButtonThree(title: "Sign In", onClick: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CustomBottomNavigationBar()));
                  }),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RegistrationScreen()));
                    },
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Don't have an account? ",
                          style:
                              TextStyle(fontSize: 13, color: Color(AppColor.primaryColor))),
                      TextSpan(
                          text: "Sing Up",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(AppColor.secondaryColor)))
                    ])),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
