import 'package:flutter/material.dart';

class OurImage extends StatelessWidget {
  final double heigth;
  final double width;
  final double radius;
  final String path;

  const OurImage({Key key, this.heigth, this.width, this.path, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.heigth,
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          borderRadius: this.radius != null ? BorderRadius.all(Radius.circular(radius)): null ,
          image:
              DecorationImage(image: AssetImage(this.path), fit: BoxFit.cover)),
    );
  }
}
