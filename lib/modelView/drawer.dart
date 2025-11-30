import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newget/modelView/myOrder_view.dart';
import 'package:newget/modelView/myaccount_view.dart';

class slideBar extends StatelessWidget {
  slideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("asset/images/1.png"),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.cancel, size: 30),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 6 / 100),
                SizedBox(
                  height: 100,
                  width: 300,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(MyaccountView());
                    },
                    child: Image.asset("asset/images/Myaccount.png"),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 2 / 100),
                SizedBox(
                  height: 100,
                  width: 300,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(MyorderView());
                    },
                    child: Image.asset("asset/images/Myorders.png"),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 2 / 100),
                SizedBox(
                  height: 100,
                  width: 300,
                  child: Image.asset("asset/images/Mylisting.png"),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 2 / 100),
                SizedBox(
                  height: 100,
                  width: 300,
                  child: Image.asset("asset/images/Likeditems.png"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1.5 / 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 85,
                        width: 150,
                        child: Image.asset("asset/images/FeedbackBtn.png"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1 / 100,
                      ),
                      SizedBox(
                        height: 85,
                        width: 150,
                        child: Image.asset("asset/images/signout.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
