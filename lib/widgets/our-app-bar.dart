import 'package:flutter/material.dart';

class FooterBar extends StatelessWidget {
  @override
  Widget build(Object context) {
    return new Container(
      child: BottomNavigationBar(
        backgroundColor: Colors.blue[700],
        currentIndex: 0,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        iconSize: 25.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text('Books')
              ),
        ],
      ),
    );
  }
}
