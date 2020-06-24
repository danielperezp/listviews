import 'package:flutter/material.dart';
import 'package:retoListView/widgets/data.dart';

class OurHListView extends StatelessWidget {
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
                    Container(
                      width: c_width,
                      height: hHeigth,
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          image: DecorationImage(
                              image: AssetImage(item['path']),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                        width: c_width - 40,
                        padding: EdgeInsets.only(top: 10.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fecha de Nacimiento',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(item['date'])
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
