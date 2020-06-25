import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onPressed;
  const MyAppBar({Key key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(this.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: this.onPressed,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
