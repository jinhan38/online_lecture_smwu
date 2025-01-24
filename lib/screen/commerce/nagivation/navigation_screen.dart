import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/commerce/home/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Commerce App"),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeScreen(),
          Container(color: Colors.blue),
          Container(color: Colors.purple),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "카테고리",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "장바구니",
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.indigo,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
