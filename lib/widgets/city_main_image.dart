import 'package:flutter/material.dart';
import 'package:vacation_mobile_ui/models/model.dart';


class CityMainImage extends StatefulWidget {
final Vacation vacation;
final int pageIndex;
CityMainImage({this.vacation,this.pageIndex});

  @override
  State<CityMainImage> createState() => _CityMainImageState();
}

class _CityMainImageState extends State<CityMainImage>with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    animation = Tween(
        begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            TweenAnimationBuilder<Alignment>(
              duration: Duration(milliseconds: 2000),
              tween: AlignmentTween(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              builder: (BuildContext context, Alignment value,
                  Widget child) {
                return Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: value,
                          image: NetworkImage(
                              widget.vacation.imageUrl))),
                );
              },
            ),
            Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(.3),
                )),
            Positioned(
                bottom: size.height * .3,
                child: Container(
                  width: size.width,
                  height: size.height * .1,
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.vacation.city,
                        style: TextStyle(  fontFamily: 'Casakova',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * .11),
                      ),
                      Text(
                        widget.vacation.country,
                        style: TextStyle(  fontFamily: 'Casakova',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: size.width * .06),
                      )
                    ],
                  ),
                )),
            Positioned(
                top: size.height * .04,
                left: size.width * .04,
                right: size.width * .04,
                child: Container(
                  width: size.width,
                  height: size.height * .04,
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios,
                              color: Colors.white),
                          onPressed: () => Navigator.pop(context)),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.favorite_border,
                              color: Colors.white),
                          onPressed: null),
                      IconButton(
                          icon: Icon(Icons.file_upload,
                              color: Colors.white),
                          onPressed: null),
                      IconButton(
                          icon: Icon(Icons.more_horiz,
                              color: Colors.white),
                          onPressed: null)
                    ],
                  ),
                )),
            Positioned(
                bottom: size.height * .05,
                child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: size.width * .1,
                    ),
                    onPressed: null)),

          ],
        ));
  }
}
