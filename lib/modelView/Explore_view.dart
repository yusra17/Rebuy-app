import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:newget/modelView/home.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(HomeScreen());
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

                    Image.asset("asset/images/Explore.png"),

                    Icon(Icons.menu),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 5 / 100),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "Search",
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 3 / 100),
                Image.asset("asset/images/catbar.png"),
                SizedBox(height: MediaQuery.of(context).size.height * 1 / 100),
                Image.asset("asset/images/1post.png"),
                SizedBox(height: MediaQuery.of(context).size.height * 1 / 100),
                Image.asset("asset/images/1post.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
