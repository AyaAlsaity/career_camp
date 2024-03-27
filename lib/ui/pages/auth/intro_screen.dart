import 'package:career_camp/ui/helper/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'log_in_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              "assets/images/intro.png",
              height: size.width/1.2,
            ),
            const SizedBox(
              height: 10
            ),
            const Text(
              textAlign: TextAlign.center,
              "Get the electronics you need without leaving your home with the GDSC Electronics app.",
              style: TextStyle(
                fontSize: 12,
                color: greyTextColor,
              ),
            ),
            SizedBox(
              height: size.width /6,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => const SignInScreen(),
                  ),
                );
              },
              child: const CircleAvatar(
                radius: 35,
                backgroundColor: mainColor,
                child: Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 40,
                  color: backgroundScreenColor,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
