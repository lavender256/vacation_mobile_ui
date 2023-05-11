import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:vacation_mobile_ui/data/data.dart';
import 'package:vacation_mobile_ui/models/hotel.dart';
import 'package:vacation_mobile_ui/widgets/hotels_card.dart';
import '../color.dart';

class HotelWidget extends StatefulWidget {
  @override
  State<HotelWidget> createState() => _HotelWidgetState();
}

class _HotelWidgetState extends State<HotelWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: size.width * .15,top: size.height*.07),
        width: size.width,
        height: size.height,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(top: size.height*.04),
              sliver: SliverToBoxAdapter(
                  child: Text(
                    "Amazing hotels\nand hostels",
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w900,
                        fontSize: size.width * .065),
                  ),
                ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: size.height*.05),
              sliver: SliverList(
                delegate:
                    SliverChildBuilderDelegate((BuildContext context, int index) {
                      Hotel hotel=hotelList[index];
                  return AnimationConfiguration.staggeredList(position: index,
                  child: SlideAnimation(
                      duration: Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: FlipAnimation(
                          flipAxis: FlipAxis.y,
                          duration: Duration(seconds: 1),
                          child: HotelsCard(hotel: hotel,))));
                },childCount: hotelList.length),
              ),
            ),
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: size.height*.07,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Text("SEE MORE",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.w500,fontSize: size.width*.04
                ),),
                Icon(Icons.arrow_forward,color: Colors.black,)
              ],)
            ),
          )
          ],
        ),
      ),
    );
  }
}
