import 'package:flutter/material.dart';

import '../../../utility/constants/app_color.dart';
import '../../../utility/shared_components/custom_button_three.dart';
import '../../../utility/shared_components/custom_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final forgotPasswordEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Image.asset("images/b86ac0a32c0c591a59bf34f33dfa42be.jpg", fit: BoxFit.cover,),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5)
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SafeArea(
                  child: Row(
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.4)
                        ),
                          onPressed: (){
                          Navigator.pop(context);
                          }, icon: const Icon(Icons.keyboard_backspace_rounded, color: Colors.white,))
                    ],
                  ),
                ),
                const Spacer(),
                const Text(
                  "Forgot Your Password?",
                  style: TextStyle(
                      color: Color(
                        AppColor.primaryColor,
                      ),
                      fontSize: 25),
                ),
                const Text(
                  "Forgot your password? don't worry it usually happens, we've got you covered on this, please provide your registered email address to to be able to reset your password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(AppColor.primaryColor), fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.mail),
                  isObscure: false,
                  controller: forgotPasswordEmailController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonThree(title: "Next", onClick: () {}),
                const Spacer()
              ],
            ),
          )
        ],
      ),
    );
    // return Scaffold(
    //   backgroundColor: const Color(AppColor.primaryColorOne),
    //   body: Column(
    //     children: [
    //       SizedBox(
    //         height: 250,
    //         child: Stack(
    //           children: [
    //             Container(
    //               height: 250,
    //               width: MediaQuery.of(context).size.width,
    //               decoration: const BoxDecoration(),
    //               child: Image.asset("images/7495199a7457ea1882ba59614e6371da.jpg", fit: BoxFit.cover,),
    //             ),
    //             Positioned(
    //               bottom: 0,
    //               child: Container(
    //                 height: 55,
    //                 width: MediaQuery.of(context).size.width,
    //                 decoration: BoxDecoration(
    //                   // color: Colors.white.withOpacity(0.5),
    //                     boxShadow: [
    //                       BoxShadow(
    //                           color: const Color(AppColor.primaryColorOne).withOpacity(0.4),
    //                           blurRadius: 30,
    //                           spreadRadius: 40
    //                       )
    //                     ]
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               bottom: 0,
    //               child: Container(
    //                 height: 40,
    //                 width: MediaQuery.of(context).size.width,
    //                 decoration: BoxDecoration(
    //                     color: const Color(AppColor.primaryColorOne).withOpacity(0.9),
    //                     boxShadow: [
    //                       BoxShadow(
    //                           color: const Color(AppColor.primaryColorOne).withOpacity(0.9),
    //                           blurRadius: 30,
    //                           spreadRadius: 40
    //                       )
    //                     ]
    //                 ),
    //               ),
    //             ),
    //             Positioned(
    //               bottom: 0,
    //               child: Container(
    //                 height: 40,
    //                 width: MediaQuery.of(context).size.width,
    //                 decoration: BoxDecoration(
    //                   // color: Colors.white.withOpacity(0.9),
    //                     boxShadow: [
    //                       BoxShadow(
    //                           color: const Color(AppColor.primaryColorOne).withOpacity(0.9),
    //                           blurRadius: 30,
    //                           spreadRadius: 40
    //                       )
    //                     ]
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
    //         child: Column(
    //           children: [
    //             const Text("Forgot Your Password?", style: TextStyle(
    //                 color: Color(AppColor.primaryColor,),
    //                 fontSize: 25
    //             ),),
    //             const Text(
    //               "Forgot your password? don't worry it usually happens, we've got you covered on this, please provide your registered email address to to be able to reset your password",
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                   color: Color(AppColor.primaryColor),
    //                   fontSize: 12
    //               ),
    //             ),
    //             const SizedBox(height: 10,),
    //             CustomTextField(
    //               hintText: "Email",
    //               prefixIcon: const Icon(Icons.mail),
    //               isObscure: false,
    //               controller: forgotPasswordEmailController,
    //             ),
    //             const SizedBox(height: 20,),
    //             CustomButtonThree(title: "Next", onClick: (){}),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
