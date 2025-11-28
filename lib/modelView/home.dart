import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newget/modelView/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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",
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hey Alice",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(slideBar());
                      },
                      child: Icon(Icons.menu, size: 24),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Search for guitar, books and more...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("asset/images/newarrival.png"),
                    Text(
                      "View More",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("asset/images/1product.png"),
                      Image.asset("asset/images/1product.png"),
                      Image.asset("asset/images/1product.png"),
                      Image.asset("asset/images/1product.png"),
                      Image.asset("asset/images/1product.png"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("asset/images/recentlyviewed.png"),
                    Text(
                      "View More",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "data:image/jpeg;base64,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",
                          ),
                          Text(
                            "Cute teddy",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "2018|Funskool",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),

                      Image.asset("asset/images/1product.png"),
                      Image.asset("asset/images/1product.png"),
                      Image.asset("asset/images/1product.png"),
                      Image.asset("asset/images/1product.png"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
