import 'package:flutter/material.dart';
import 'package:retoListView/widgets/data.dart';

class OurVListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double hHeigth = MediaQuery.of(context).size.height * 0.22;
    double vHeigth = MediaQuery.of(context).size.height - hHeigth - 220;
    final list = Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          for (final item in dataV)
            new Container(
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
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  new Container(
                    width: MediaQuery.of(context).size.width - 20,
                    height: vHeigth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        image: DecorationImage(
                            image: AssetImage(item['path']),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            )
        ],
      ),
    );
    return list;
  }
}
