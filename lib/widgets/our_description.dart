import 'package:flutter/material.dart';
import 'package:retoListView/widgets/our_desc_args.dart';
import 'package:retoListView/widgets/our_image.dart';

class OurDescription extends StatelessWidget {
  static const ROUTE_PATH = '/description';

  @override
  Widget build(BuildContext context) {
    final OurScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            OurImage(
                              heigth: 250,
                              width: 250,
                              path: args.path,
                              radius: 8.0,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      'Type',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    child: Text(args.type),
                                  )
                                ])
                          ])))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                    alignment: Alignment(0, -1),
                      margin: EdgeInsets.all(20.0),
                      child: Text(
                        args.description,
                        style: TextStyle(fontSize: 18),
                      )))
            ],
          )
        ]),
      ),
    );
  }
}
