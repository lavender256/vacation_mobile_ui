import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
final String imageUrl;
final int index;

PhotoCard({this.imageUrl,this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
       image: DecorationImage(fit: BoxFit.cover,
           image: NetworkImage(imageUrl)
       )
      ),
    );
  }
}
