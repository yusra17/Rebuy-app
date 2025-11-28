import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:newget/modelView/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // 2 second baad next page
    Timer(Duration(seconds: 3), () {
      Get.off(() => Signup());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      body: Center(
        child: CircleAvatar(
          radius: 50,
          child: SizedBox(
            height: 60, // <-- Image ka size control yahan
            width: 60, // <-- Image ka size control yahan
            child: Image.asset("asset/images/1.png"),
          ),
        ),
      ),
    );
  }
}
