import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vacation_mobile_ui/models/model.dart';
import 'package:vacation_mobile_ui/widgets/city_main_image.dart';
import 'package:vacation_mobile_ui/widgets/experience_widget.dart';
import 'package:vacation_mobile_ui/widgets/fake_tab_bar.dart';
import 'package:vacation_mobile_ui/widgets/hotels_widget.dart';
import 'package:vacation_mobile_ui/widgets/over_view_widget.dart';
import 'package:vacation_mobile_ui/widgets/photos_widget.dart';



class CityScreen extends StatefulWidget {
  final Vacation vacation;

  CityScreen({this.vacation});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
PageController pageController;
int trueIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: [
              PageView(
                onPageChanged: (int page){
                  setState(() {
                    trueIndex=page;
                  });
                },
                children: [
                  CityMainImage(vacation: widget.vacation,pageIndex: trueIndex,),
                  OverViewWidget(),
                  ExperienceWidget(vacation: widget.vacation,),
                  HotelWidget(),
                  PhotosWidget()
                ],
                scrollDirection: Axis.vertical,
              ),
              trueIndex!=0?FakeTabBar(trueIndex: trueIndex,):SizedBox.shrink(),
            ],
          )
        ));
  }
}
