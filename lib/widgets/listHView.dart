import 'package:flutter/material.dart';
import 'package:retoListView/widgets/data.dart';
import 'package:retoListView/widgets/our_desc_args.dart';
import 'package:retoListView/widgets/our_description.dart';
import 'package:retoListView/widgets/our_image.dart';

class OurHListView extends StatelessWidget {
  final String title = 'Type.';

  onTapped(BuildContext context, String path, String type, String description) {
    print(path);
    Navigator.pushNamed(context, OurDescription.ROUTE_PATH, arguments: 
    OurScreenArguments(path, type, description));
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.5;
    double hHeigth = MediaQuery.of(context).size.height * 0.22;
    final list = Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (final item in dataH)
            new Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => this.onTapped(context, item['path'], item['type'],item['description']),
                      child:OurImage(heigth: hHeigth, width: c_width,path: item['path'],radius: 8.0,),
                    ),
                    Container(
                        width: c_width - 40,
                        padding: EdgeInsets.only(top: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              this.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(item['type'])
                          ],
                        ))
                  ],
                )),
        ],
      ),
    );
    return list;
  }
}
