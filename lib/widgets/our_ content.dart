import 'package:flutter/material.dart';

class OurContent extends StatelessWidget{

  final String description;
  final String path;
  final String name;
@override
  Widget build(BuildContext context) {
    double imageWidth = MediaQuery.of(context).size.width * 0.5;
    return Container(
      child: Column(
        children: [
          Row(children:[
            Column(
              children: [
            OurImage(heigth: 200, width: imageWidth,path: this.path, radius: 8.0,),
            Expanded(child: Container( margin: EdgesInsets.only(top:10.0, left:10.0),
              child: Column(
                children:[
                Container(child:Text('Type')),
                Container(child:Text(this.name)),
                ])
                ))
              ]
            )
          ]),
          Column(children:[
            Text('Description')
          ]),
        ]
      )
    )
  }
}