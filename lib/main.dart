import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newget/modelView/signup.dart';

void main() {
  runApp(const NewGet());
}

class NewGet extends StatelessWidget {
  const NewGet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Signup());
  }
}
