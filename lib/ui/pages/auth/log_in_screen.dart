import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../helper/const.dart';
import '../main/tabs_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> signUpForm = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool ispasswordshow = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: signUpForm,
          child: SingleChildScrollView(
            // reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.width / 5,
                  ),
                  const Center(
                    child: Text(
                      "Hello!",
                      style: TextStyle(
                        fontSize: 16,
                        color: mainTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Center(
                    child: Text(
                      "Log In to your Account",
                      style: TextStyle(
                        fontSize: 14,
                        color: mainTextColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    maxLength: 16,
                    maxLines: 1,
                    controller: emailController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please fill this field";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      fontSize: 10,
                      color: greyTextColor.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      helperStyle: TextStyle(
                        color: greyTextColor.withOpacity(0.8),
                        fontSize: 10,
                      ),
                      errorMaxLines: 1,
                      // floatingLabelBehavior:FloatingLabelBehavior.always,
                      floatingLabelStyle: const TextStyle(
                        fontSize: 10,
                        color: mainColor,
                        // fontWeight: FontWeight.bold,
                      ),
                      errorStyle: const TextStyle(
                        fontSize: 10,
                        color: warningColor,
                      ),
                      labelText: "Enter your email",
                      labelStyle: TextStyle(
                        fontSize: 10,
                        color: greyTextColor.withOpacity(0.8),
                        // fontWeight: FontWeight.bold,
                      ),

                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 16),

                      fillColor: backgroundScreenColor,
                      filled: true,
                      hintText: "xxxx91@gmail.com",
                      hintStyle: TextStyle(
                        color: greyTextColor.withOpacity(0.8),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: backgroundScreenColor,
                          )),
                      focusColor: mainColor,
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: greyTextColor.withOpacity(0.5),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: greyTextColor.withOpacity(0.5),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: warningColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: mainColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    maxLength: 16,
                    maxLines: 1,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: ispasswordshow,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please fill this field";
                      }
                      if (value.length < 8) {
                        return "Password must be more than 8 characters long";
                      }
                      return null;
                    },
                    style: TextStyle(
                      fontSize: 10,
                      color: greyTextColor.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      helperStyle: TextStyle(
                        color: greyTextColor.withOpacity(0.8),
                        fontSize: 10,
                      ),
                      errorMaxLines: 1,
                      // floatingLabelBehavior:FloatingLabelBehavior.always,
                      floatingLabelStyle: const TextStyle(
                        fontSize: 10,
                        color: mainColor,
                        // fontWeight: FontWeight.bold,
                      ),
                      errorStyle: const TextStyle(
                        fontSize: 10,
                        color: warningColor,
                      ),
                      labelText: "Enter your password",
                      labelStyle: TextStyle(
                        fontSize: 10,
                        color: greyTextColor.withOpacity(0.8),
                        // fontWeight: FontWeight.bold,
                      ),

                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 16),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            ispasswordshow = !ispasswordshow;
                          });
                        },
                        icon: Icon(
                          ispasswordshow
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: mainColor,
                          size: 25,
                        ),
                      ),

                      fillColor: backgroundScreenColor,
                      filled: true,
                      hintText: "**********",
                      hintStyle: TextStyle(
                        color: greyTextColor.withOpacity(0.8),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: backgroundScreenColor,
                          )),
                      focusColor: mainColor,
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: greyTextColor.withOpacity(0.5),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: greyTextColor.withOpacity(0.5),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: warningColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: mainColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Forgot password ?",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: greyTextColor,
                        decoration: TextDecoration.underline,
                        decorationColor: greyTextColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.width / 7,
                  ),
                  InkWell(
                    onTap: (){
                      if (signUpForm.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const TabsScreen(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: size.width / 6.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: mainColor,
                        border: Border.all(color: mainColor, width: 2),
                      ),
                      child: const Center(
                        child: Text(
                          "Log In",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                            color: backgroundScreenColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                
                ],
              ),
            ),
          ),
        ),
      ),
      // persistentFooterButtons: [
      //   Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       GestureDetector(
      //         onTap: () {},
      //         child: const Text(
      //           "Forgot password ?",
      //           style: TextStyle(
      //             fontSize: 10,
      //             fontWeight: FontWeight.w500,
      //             color: mainColor,
      //             decoration: TextDecoration.underline,
      //             decorationColor: mainColor,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 5,
      //       ),
      //       InkWell(
      //         onTap: () async {
      //           if (signUpForm.currentState!.validate()) {
      //             // Navigator.pushReplacement(
      //             //   context,
      //             //   CupertinoPageRoute(
      //             //     builder: (context) => const TabsScreen(),
      //             //   ),
      //             // );
      //           }
      //         },
      //         child: Container(
      //           width: double.infinity,
      //           height: size.width / 6.5,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(40),
      //             color: mainColor,
      //             border: Border.all(color: mainColor, width: 2),
      //           ),
      //           child: const Center(
      //             child: Text(
      //               "logIn",
      //               textAlign: TextAlign.center,
      //               style: TextStyle(
      //                 fontSize: 14,
      //                 fontWeight: FontWeight.bold,
      //                 color: backgroundScreenColor,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(
      //           bottom: MediaQuery.of(context).viewInsets.bottom,
      //         ),
      //       ),
      //     ],
      //   ),
      // ],
    );
  }
}
