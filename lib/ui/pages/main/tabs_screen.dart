import 'package:career_camp/ui/pages/main/cart_screen.dart';
import 'package:career_camp/ui/pages/main/home_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index == 0 ? const HomeScreen() : const CartScreen(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.shopping_cart),
            ),
          ]),
    );
  }
}








// // import 'package:career_camp/ui/pages/main/cart_screen.dart';
// // import 'package:career_camp/ui/pages/main/home_screen.dart';
// // import 'package:flutter/material.dart';

// // class TabsScreen extends StatefulWidget {
// //   const TabsScreen({super.key});

// //   @override
// //   State<TabsScreen> createState() => _TabsScreenState();
// // }

// // class _TabsScreenState extends State<TabsScreen> {
// //   int index = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: index == 0 ? const HomeScreen() : const CartScreen(),
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: index,
// //         onTap: (value) {
// //           setState(() {
// //             index = value;
// //           });
// //         },
// //         items: const [
// //           BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
// //           BottomNavigationBarItem(icon: Icon(Icons.ac_unit_rounded),label: ""),
// //         ],
// //       ),
// //     );
// //   }
// // }




// import 'package:career_camp/ui/helper/const.dart';
// import 'package:flutter/material.dart';
// import 'cart_screen.dart';
// import 'home_screen.dart';

// class TabsScreen extends StatefulWidget {
//   const TabsScreen({super.key});

//   @override
//   State<TabsScreen> createState() => _TabsScreenState();
// }

// class _TabsScreenState extends State<TabsScreen> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: AnimatedSwitcher(
//         duration: kThemeAnimationDuration,
//         child: currentIndex == 0 ? const HomeScreen() : const CartScreen(),
//       ),

//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         mouseCursor: MouseCursor.defer,
//         elevation: 0,
//         currentIndex: currentIndex,
        
        
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },



//         selectedItemColor: mainColor,
//         unselectedItemColor: mainTextColor.withOpacity(0.8),
//         selectedLabelStyle: const TextStyle(
//           fontWeight: FontWeight.bold,
//           color: mainColor,
//         ),
//         unselectedLabelStyle: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: mainTextColor.withOpacity(0.8),
//         ),
       
       
//         items: [
//           BottomNavigationBarItem(
//             label: "Home",
//             backgroundColor: backgroundScreenColor,
//             icon: Icon(
//               Icons.other_houses_outlined,
//               size: currentIndex == 0 ? size.width / 14 : size.width / 16,
//               color: currentIndex == 0 ? mainColor : mainTextColor,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: "Cart",
//             backgroundColor: backgroundScreenColor,
//             icon: Icon(
//               Icons.shopping_cart_outlined,
//               size: currentIndex == 1 ? size.width / 14 : size.width / 16,
//               color: currentIndex == 1 ? mainColor : mainTextColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
