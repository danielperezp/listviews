import 'package:flutter/material.dart';

import 'package:retoListView/widgets/listHView.dart';
import 'package:retoListView/widgets/listVView.dart';
import 'package:retoListView/widgets/our-app-bar.dart';

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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ListViews'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(this.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_circle),onPressed: (){print('Go my friend.');},)
        ],

      ),
      body: new Container(
        child: new Stack(
          children: <Widget>[Positioned(
            top: 0,
            left: 0,
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: OurHListView()), 
            Positioned(
              top: 200,
              left: 0,
              height: MediaQuery.of(context).size.height - 200,
            width: 500,
              child:OurVListView())
              ],
        ),
      ),
      bottomNavigationBar:
          FooterBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
