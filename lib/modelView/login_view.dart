import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newget/modelView/home.dart';
import 'package:newget/modelView/navbar.dart';
import 'package:newget/modelView/signup.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(
                            8,
                          ), // rounded corners
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Image.asset("asset/images/1.png"),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 3 / 100),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image.asset("asset/images/2(1).png"),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1 / 100),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    right: 24.0,
                    bottom: 12.0,
                  ),
                  child: Text(
                    "LogIn with one of the following options",

                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 7 / 100,
                    width: MediaQuery.of(context).size.width * 30 / 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.grey[300],
                    ),
                    child: Image.asset(
                      height: 20,
                      width: 20,
                      "asset/images/3.png",
                      // fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 7 / 100,
                    width: MediaQuery.of(context).size.width * 30 / 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.grey[300],
                    ),

                    child: Image.asset(
                      height: 20,
                      width: 20,
                      "asset/images/4.png",
                      // fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 7 / 100,
                    width: MediaQuery.of(context).size.width * 30 / 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.grey[300],
                    ),
                    child: Image.asset(
                      height: 20,
                      width: 20,
                      "asset/images/5.png",
                      // fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 5 / 100),
              Image.asset("asset/images/6.png"),
              SizedBox(height: MediaQuery.of(context).size.height * 3 / 100),

              Padding(
                padding: const EdgeInsets.only(
                  left: 36.0,
                  right: 36.0,
                  top: 15,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 36.0,
                  right: 36.0,
                  top: 15,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 2 / 100),

              ElevatedButton(
                onPressed: () {
                  Get.to(BottomNavPage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                ),
                child: Image.asset("asset/images/login.png"),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 2.5 / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?", textAlign: TextAlign.start),
                  TextButton(
                    onPressed: () {
                      Get.to(Signup());
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.pinkAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
