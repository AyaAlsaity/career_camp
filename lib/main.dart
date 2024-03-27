import 'package:flutter/material.dart';
import 'ui/pages/auth/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}















// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.purpleAccent,
//           title: const Text(
//             textAlign: TextAlign.center,
//             "Flutter",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           actions: const [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Icon(Icons.account_box_outlined),
//             ),
//           ]),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Aya Alsaity",
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               "$index",
//               style: const TextStyle(
//                 fontSize: 16,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Row(
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               setState(() {
//                 ++index;
//               });
//             },
//             backgroundColor: Colors.purpleAccent,
//             child: const Icon(Icons.add),
//           ),
      
//           FloatingActionButton(
//             onPressed: () {
//               setState(() {
//                 --index;
//               });
//             },
//             backgroundColor: Colors.purpleAccent,
//             child: const Icon(Icons.add),
//           ),
      
      
//         ],
//       ),
//     );
//   }
// }
























// import 'package:flutter/material.dart';
// import 'ui/pages/auth/splash_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner :false,
//       theme: ThemeData(
//         useMaterial3: true,
//       ),
//       home: const SplashScreen(),
//     );
//   }
// }


