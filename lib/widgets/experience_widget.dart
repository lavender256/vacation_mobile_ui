import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:vacation_mobile_ui/data/data.dart';
import 'package:vacation_mobile_ui/data/experience.dart';
import 'package:vacation_mobile_ui/models/model.dart';
import 'package:vacation_mobile_ui/widgets/fake_tab_bar.dart';
import '../color.dart';
import 'experience_card.dart';


class ExperienceWidget extends StatefulWidget {
  final Vacation vacation;

  ExperienceWidget({this.vacation});

  @override
  State<ExperienceWidget> createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
        padding: EdgeInsets.only(left: size.width * .15,top: size.height*.07),
          width: size.width,
          height: size.height,
          child: AnimationLimiter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: AnimationConfiguration.toStaggeredList(
                  childAnimationBuilder: (widget) => SlideAnimation(
                        duration: Duration(milliseconds: 1000),
                        child: FlipAnimation(
                          flipAxis: FlipAxis.y,
                          duration: Duration(seconds: 1),
                          child: widget,
                        ),
                      ),
                  children: [
                    SizedBox(height: size.height*.06,),
                    Text(
                      "Top Experiences in ${widget.vacation.city}",
                      style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.w900,
                          fontSize: size.width * .08),
                    ),    SizedBox(height: size.height*.1,),
                    Container(
                      width: size.width,
                      height: size.height * .5,
                      child: ListView.builder(
                          itemCount: experienceList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            Experience experience = experienceList[index];
                            return AnimationConfiguration.staggeredList(
                              position: index,
                              child: SlideAnimation(
                                  duration: Duration(milliseconds: 500),
                                  child: FlipAnimation(
                                      flipAxis: FlipAxis.y,
                                      duration: Duration(milliseconds: 500),
                                      child: ExperienceCard(
                                        experience: experience,
                                      ))),
                            );
                          }),
                    )
                  ]),
            ),
          ),
        ));
  }
}
