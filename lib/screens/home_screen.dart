import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vacation_mobile_ui/data/data.dart';
import 'package:vacation_mobile_ui/models/model.dart';


import '../color.dart';
import 'city_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with SingleTickerProviderStateMixin
  {
  PageController pageController;
  double pageOffset = 0.0;
  double viewportFraction = 0.8;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController =
    PageController(initialPage: 0, viewportFraction: viewportFraction)
      ..addListener(() {
        setState(() {
          pageOffset = pageController.page;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: size.height * .07),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * .05),
              child: Text(
                "Find Your\nnext Vacation.",
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w700,
                    fontSize: size.width * .08),
              ),
            ),
            SizedBox(
              height: size.height * .08,
            ),
            Container(
              width: size.width,
              height: size.height * .7,
              child: PageView.builder(
                  itemCount: vacationList.length,
                  controller: pageController,
                  itemBuilder: (BuildContext context, int index) {
                    Vacation vacation = vacationList[index];
                    double scale = max(viewportFraction,
                        (1 - (pageOffset - index).abs()) + viewportFraction);
                    double angle = (pageOffset - index).abs();
                    if (angle > 0.5) {
                      angle = 1 - angle;
                    }
                    return GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>CityScreen(vacation: vacation,))),
                      child: Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(angle),
                        alignment: Alignment.center,
                        child: Material(
                          elevation: 20,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 70 - scale * 25, right: size.width * .04
                            ),
                            width: size.width * .62,
                            height: size.height*.6,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    width: size.width,
                                    height: size.height,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(vacation.imageUrl)
                                        )
                                    ),
                                  ),
                                ),
                                Positioned.fill(child: Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          end: Alignment.bottomLeft,
                                          begin: Alignment.centerRight,
                                          colors: [
                                            Colors.transparent,Colors.transparent,
                                            Colors.black.withOpacity(.6),
                                            Colors.black.withOpacity(.8),
                                          ]
                                      )
                                  ),
                                )),
                                Positioned(
                                  bottom: 0,
                                  left: size.width * .09
                                  , child: AnimatedOpacity(
                                  opacity: angle == 0 ? 1 : 0,
                                  duration: Duration(milliseconds: 200),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: size.height * .015),
                                    width: size.width,
                                    height: size.height * .11,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(vacation.city, style: TextStyle(
                                            color: Colors.white,  fontFamily: 'Casakova',
                                            fontSize: size.width * .075,
                                            fontWeight: FontWeight.w500
                                        ),),
                                        Text(vacation.country, style: TextStyle(
                                            color: Colors.white.withOpacity(.7),  fontFamily: 'Casakova',
                                            fontSize: size.width * .055,
                                            fontWeight: FontWeight.w500
                                        ),)
                                      ],
                                    ),
                                  ),
                                ),
                                )
                              ],
                            ),
                          )
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
