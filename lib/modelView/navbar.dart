import 'package:flutter/material.dart';
import 'package:newget/modelView/Explore_view.dart';
import 'package:newget/modelView/home.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ExploreView(),
    OrdersScreen(),
    ProfileScreen(),
    likeditem_Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        elevation: 20,
        currentIndex: _selectedIndex,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        onTap: _onItemTapped,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            activeIcon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
            activeIcon: Icon(Icons.explore_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_rounded),
            label: "post",
            activeIcon: Icon(Icons.camera_alt_outlined),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Orders",
            activeIcon: Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            activeIcon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}

/// ------------------- SCREENS -----------------

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Orders Screen", style: TextStyle(fontSize: 25)),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Profile Screen", style: TextStyle(fontSize: 25)),
    );
  }
}

class likeditem_Screen extends StatelessWidget {
  const likeditem_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Profile Screen", style: TextStyle(fontSize: 25)),
    );
  }
}
