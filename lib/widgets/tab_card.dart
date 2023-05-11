import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
  final int currentIndex;
  final int index;
  final String title;
  TabCard({this.currentIndex,this.index,this.title});



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        child:Column(
          children: [
            Text(title),
            Container(width: size.width*.04,
              height: 2,
              color: index==currentIndex?Colors.deepOrange:Colors.transparent,
            )
          ],
        )
    );
  }
}
