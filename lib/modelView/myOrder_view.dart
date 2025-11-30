import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyorderView extends StatelessWidget {
  const MyorderView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
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
                    Text(
                      "My Orders",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.menu, size: 30),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 5 / 100),
                Image.asset("asset/images/P1.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1.5 / 100,
                ),
                Image.asset("asset/images/P1.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1.5 / 100,
                ),
                Image.asset("asset/images/P1.png"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1.5 / 100,
                ),
                Image.asset("asset/images/P1.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
