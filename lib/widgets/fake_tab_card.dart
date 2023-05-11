import 'package:flutter/material.dart';
import 'package:vacation_mobile_ui/color.dart';

class FakeTabCard extends StatelessWidget {
final String title;
final int tabIndex;
final int trueIndex;
FakeTabCard({this.title,this.tabIndex,this.trueIndex});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.22,
      height: size.height,
      child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text(title.toUpperCase(),style: TextStyle(color: trueIndex==tabIndex?Colors.black:Colors.black.withOpacity(.3),fontWeight: FontWeight.w800),),
          Container(width: size.width*.12,
          height: 3,
            color: trueIndex==tabIndex?mainColor:Colors.transparent,
          )
        ]
      )
    );
  }
}
