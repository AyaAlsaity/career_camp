import 'dart:async';

import 'package:career_camp/ui/pages/auth/intro_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper/const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, CupertinoPageRoute(builder: (_) => const IntroScreen()));
    });

   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:mainColor,
      body: Center(
        child: SizedBox(
          height: size.width / 4,
          child: Image.asset(
            "assets/images/logoGDSC2.png",
          ),
        ),
      ),
    );
  }
}




























// import 'dart:async';
// import 'package:career_camp/ui/helper/const.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'intro_screen.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {


//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: mainColor,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20,),
//         child: Center(
//           child: SizedBox(
//             height: size.height * 4,
//             width: size.width * 4,
//             child: Image.asset(
//               "assets/images/logoGDSC2.png",
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
