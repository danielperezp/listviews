import 'package:flutter/material.dart';
import 'package:retoListView/widgets/data.dart';

class OurHListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (final item in dataH)
            new Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    new Container(
                      width: 200,
                      height: 200,
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(item['path']),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nacimiento',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),),
                        Text(item['date'])],
                    )
                  ],
                )),
        ],
      ),
    );
    return list;
  }
}
