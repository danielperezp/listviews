import 'package:flutter/material.dart';
import 'package:retoListView/widgets/data.dart';

class OurVListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          for (final item in dataV)
            new Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  new Container(
                    width: MediaQuery.of(context).size.width -20,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(item['path']),
                            fit: BoxFit.cover)
                            ),
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
