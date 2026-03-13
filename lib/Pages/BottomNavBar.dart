import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'About.dart';

class BottomNavBar extends StatefulWidget{
  
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    About()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar:SizedBox(
        height: 70,
        child:BottomNavigationBar( iconSize: 16,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About")
        ],
        selectedItemColor: Colors.yellow,
        elevation: 8,
      )), 
      
      
      
      
    );
    
  }
}