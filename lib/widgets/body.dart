import 'package:flutter/material.dart';
import 'package:retoListView/widgets/listHView.dart';
import 'package:retoListView/widgets/listVView.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double vWidth = MediaQuery.of(context).size.width;
    double hHeigth = MediaQuery.of(context).size.height * 0.22;
    double vHeigth = MediaQuery.of(context).size.height - hHeigth - 200;
    return new Stack(
        children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              height: hHeigth,
              width: vWidth,
              child: OurHListView()),
          Positioned(
              top: 200,
              left: 0,
              height: vHeigth,
              width: vWidth,
              child: OurVListView())
        ],
      );
  }
  
}