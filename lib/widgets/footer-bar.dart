import 'package:flutter/material.dart';

class FooterBar extends StatelessWidget {
  final int indexTap;
  final ValueChanged<int> onTapped;

  const FooterBar({Key key, this.indexTap, this.onTapped}) : super(key: key);

  @override
  Widget build(Object context) {
    return new Container(
      child: BottomNavigationBar(
        backgroundColor: Colors.green[600],
        currentIndex: this.indexTap,
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white,
        onTap: this.onTapped,
        iconSize: 25.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), title: Text('Books')),
        ],
      ),
    );
  }
}
