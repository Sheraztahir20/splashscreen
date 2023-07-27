// // ignore_for_file: use_build_context_synchronously

// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'drawer.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 6));
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType
            .fade, // You can change the transition animation if desired
        child: const CustomDrawer(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Splash Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Lottie.asset('assets/config/animation.json'),
          // child: CircularProgressIndicator(),
        ),
      );
}


// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateToHome();
//   }

//   _navigateToHome() async {
//     await Future.delayed(const Duration(milliseconds: 1500));
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(
//         builder: (context) =>  MyHomePage(
//           // title: 'My Home Page',
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: const Text('Splash Screen'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Lottie.asset('assets/config/animation.json'),
//         ),
//         // If you want to have a colored background, uncomment the backgroundColor property
//         // backgroundColor: Colors.green.shade600,
//         // body: Center(
//         //   child: Column(
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     children: [
//         //       Container(
//         //         height: 100,
//         //         width: 100,
//         //         color: Colors.green,
//         //       ),
//         //       Container(
//         //         child: const Text(
//         //           'Splash Screen',
//         //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//         //         ),
//         //       ),
//         //     ],
//         //   ),
//         // ),
//       );
// }
