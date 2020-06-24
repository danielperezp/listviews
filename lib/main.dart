import 'package:flutter/material.dart';
import 'package:retoListView/widgets/animal_desc.dart';
import 'package:retoListView/widgets/body.dart';
import 'package:retoListView/widgets/footer-bar.dart';

import 'package:retoListView/widgets/listHView.dart';
import 'package:retoListView/widgets/listVView.dart';
import 'package:retoListView/widgets/places_desc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reto 3 listview',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        MyHomePage.ROUTE_PATH: (context) => MyHomePage(title: 'ListViews'),
        Places.ROUTE_PATH: (context) => Places()
      },
      // home: MyHomePage(title: 'ListViews'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const ROUTE_PATH = '/';
  final String title;
  const MyHomePage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Home(this.title);
  }
}

class _Home extends State<MyHomePage>{
  final String title;

  _Home(this.title);

  List<Widget> children = [
    Body(),
    AnimalDesc()
  ];

  int indexTap = 0;

  onTapped(int value){
    setState(() {
      this.indexTap = value;
    });
  }

  onPressed(){
    Navigator.pushNamed(context, Places.ROUTE_PATH);
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(this.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: this.onPressed,
          )
        ],
      ),
      body: Center(child: this.children[this.indexTap],),
      bottomNavigationBar:
          FooterBar( indexTap: this.indexTap, onTapped: onTapped,), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}