import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myti_hq/features/auth/screens/login_screen.dart';
import 'package:myti_hq/utility/constants/app_color.dart';
import 'package:myti_hq/utility/shared_components/custom_button_three.dart';

import '../../../utility/shared_components/custom_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final otherNamesController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  bool isChecked = true;
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColor.primaryColorOne),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(),
                    child: Image.asset("images/2f9ce6e8f7df7e041ccefcb4c2b97d83.jpg", fit: BoxFit.cover,),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        // color: Colors.white.withOpacity(0.5),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(AppColor.primaryColorOne).withOpacity(0.4),
                            blurRadius: 30,
                            spreadRadius: 40
                          )
                        ]
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(AppColor.primaryColorOne).withOpacity(0.9),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(AppColor.primaryColorOne).withOpacity(0.9),
                            blurRadius: 30,
                            spreadRadius: 40
                          )
                        ]
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        // color: Colors.white.withOpacity(0.9),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(AppColor.primaryColorOne).withOpacity(0.9),
                            blurRadius: 30,
                            spreadRadius: 40
                          )
                        ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const Text("Let's Sign You Up!!", style: TextStyle(
                      color: Color(AppColor.primaryColor,),
                      fontSize: 25
                  ),),
                  const Text(
                    "You are expected to fill out the form below before you can be able to access all that we offer.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(AppColor.primaryColor),
                        fontSize: 12
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          hintText: "First Name",
                          prefixIcon: const Icon(Icons.person),
                          isObscure: false,
                          controller: firstNameController,
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Expanded(
                        child: CustomTextField(
                          hintText: "Last Name",
                          prefixIcon: const Icon(Icons.person),
                          isObscure: false,
                          controller: lastNameController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          hintText: "Other Names (optional)",
                          prefixIcon: const Icon(Icons.person),
                          isObscure: false,
                          controller: otherNamesController,
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Expanded(
                        child: CustomTextField(
                          hintText: "Phone Number",
                          prefixIcon: const Icon(Icons.phone),
                          isObscure: false,
                          controller: phoneNumberController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
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
                  const SizedBox(height: 20,),
                  CustomButtonThree(title: "Sign Up", onClick: (){}),
                  const SizedBox(height: 50,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: RichText(text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(AppColor.primaryColor)
                          )
                        ),
                        TextSpan(
                            text: "Sign In",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(AppColor.secondaryColor)
                            )
                        )
                      ]
                    )),
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
