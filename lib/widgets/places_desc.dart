import 'package:flutter/material.dart';

class Places extends StatelessWidget{
  static const ROUTE_PATH = '/places';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Place desc'),
      automaticallyImplyLeading: false,),
      body: Center(child: Text('Body'),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
        Navigator.pop(context);
      },),
      );
  }
  
}