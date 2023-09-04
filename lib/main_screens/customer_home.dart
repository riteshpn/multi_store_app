import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/category.dart';
import 'package:multi_store_app/main_screens/home.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = const [
    HomeScreen(),
    CategoryScreen(),
    Center(
      child: Text('stores screen'),
    ),
    Center(
      child: Text('cart screen'),
    ),
    Center(
      child: Text('Profile screen'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        //unselectedItemColor: Colors.amber,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
