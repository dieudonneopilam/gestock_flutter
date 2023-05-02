// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stock_manager/screen/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GESTION-STOCK',
        home: Accueil());
  }
}

// class Accueil extends StatefulWidget {
//   const Accueil({super.key});

//   @override
//   State<Accueil> createState() => _AccueilState();
// }

// class _AccueilState extends State<Accueil> with SingleTickerProviderStateMixin {

//     late AnimationController _controller;
//   late Animation _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
//     _animation = Tween<double>(begin: 0.0, end: 2 * pi).animate(_controller);
//     _controller.repeat();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: AnimatedBuilder(
//       animation: _animation,
//       builder: (context, child) {
//         return Transform(
//           alignment: Alignment.center,
//           transform: Matrix4.identity()..rotateY(_animation.value),
//           child: Container(
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//               color: Colors.blueAccent,
//               borderRadius: BorderRadius.circular(10)
//             ),
//           ),
//         );
//       },
//     ),
//       ),
//     );
//   }
// }