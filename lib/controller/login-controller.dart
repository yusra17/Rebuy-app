import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // 1. Email field ka controller
  TextEditingController emailController = TextEditingController();

  // 2. Error message ko store karne ke liye
  var emailError =
      RxnString(); // RxnString ka matlab hai: ye "observable" hai aur null bhi ho sakta hai

  // 3. Email validation function
  void validateEmail() {
    if (emailController.text.isEmpty) {
      emailError.value = "Email can't be empty"; // agar blank ho toh error
    } else if (!GetUtils.isEmail(emailController.text)) {
      emailError.value = "Enter a valid email"; // agar email valid nahi hai
    } else {
      emailError.value = null; // error nahi hai, sab sahi
    }
  }
}
