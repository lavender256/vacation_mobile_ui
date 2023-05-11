import 'package:flutter/material.dart';
import 'package:vacation_mobile_ui/color.dart';
import 'package:vacation_mobile_ui/models/hotel.dart';


class HotelsCard extends StatelessWidget {
  final Hotel hotel;

  HotelsCard({this.hotel});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height*.02),
      width: size.width*.6,
    height: size.height*.2,
      child: Row(
        children: [
        Container(width: size.width*.3,
        height: size.height,
          decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: NetworkImage(hotel.imageUrl)
          )
          ),
        ),
        SizedBox(width: size.width*.05,),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("TOP CHOICE",style: TextStyle(color: mainColor,fontWeight: FontWeight.w900,fontSize: size.width*.035),),
            Text(hotel.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: size.width*.048),),
           SizedBox(height: size.height*.01,),
            Text(hotel.detail,style: TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.w500,fontSize: size.width*.038),)
          ],
        )
      ],),
    );
  }
}
