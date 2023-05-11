import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:vacation_mobile_ui/data/data.dart';
import 'package:vacation_mobile_ui/widgets/photo_card.dart';

import '../color.dart';
import 'fake_tab_bar.dart';

class PhotosWidget extends StatefulWidget {

  @override
  State<PhotosWidget> createState() => _PhotosWidgetState();
}

class _PhotosWidgetState extends State<PhotosWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(padding: EdgeInsets.only(left: size.width * .15,top: size.height*.07),
          width: size.width,
          height: size.height,
          child: AnimationLimiter(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children:
                AnimationConfiguration.toStaggeredList(
                  childAnimationBuilder:(widget)=> SlideAnimation(
                    duration: Duration(seconds: 2),
                    child: FlipAnimation(
                        duration: Duration(seconds: 1),
                        flipAxis: FlipAxis.y,
                        child: widget),
                  ), children:[
                  SizedBox(height: size.height*.03,),
                  Text("Photo Shared by\nTravelers", style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * .07),),
                  SizedBox(height: size.height*.03,),
                    Container(
                    width: size.width,
                    height: size.height*.75,
                    child: StaggeredGridView.countBuilder(
                        itemCount: photosList.length,
                        staggeredTileBuilder: (int index) =>(index==0)?StaggeredTile.count(1, 0.7):
                        (index.isEven)
                            ? StaggeredTile.count(1, 0.7)
                            : StaggeredTile.count(1, 1),
                        mainAxisSpacing: size.width * .02,
                        crossAxisSpacing: size.width * .02,
                        crossAxisCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return AnimationConfiguration.staggeredList(position: index,
                              child: SlideAnimation(
                                  duration: Duration(milliseconds: 1500),
                                  child: FlipAnimation(
                                    duration: Duration(seconds: 1),
                                    flipAxis: FlipAxis.y
                                      ,child: PhotoCard(imageUrl: photosList[index],index: index,))));}),
                  )],
                ),

    ),
          )));
  }
}
