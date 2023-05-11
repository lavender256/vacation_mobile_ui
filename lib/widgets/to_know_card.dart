import 'package:flutter/material.dart';
import 'package:vacation_mobile_ui/widgets/to_know.dart';


import '../color.dart';


class ToKnowCard extends StatelessWidget {
final ToKnow toKnow;

ToKnowCard({this.toKnow});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.black.withOpacity(.1),
      padding: EdgeInsets.symmetric(horizontal: size.width*.02,vertical: size.height*.02),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(toKnow.icon,color: mainColor,size: size.width*.07,),
        Spacer(),
        Text(toKnow.title,style: TextStyle(
          color: Colors.black.withOpacity(.5),fontSize: size.width*.035,fontWeight: FontWeight.w400
        ),),
        SizedBox(height: size.height*.01,),
        Text(toKnow.answer,style: TextStyle(
            color: mainColor,fontWeight: FontWeight.w800,fontSize: size.width*.045
        ),)
      ],
      ),
    );
  }
}
