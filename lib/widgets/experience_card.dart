import 'package:flutter/material.dart';
import 'package:vacation_mobile_ui/data/experience.dart';



class ExperienceCard extends StatelessWidget {
final Experience experience;


ExperienceCard({this.experience});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width*.04),
      width: size.width*.7,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover,
            image: NetworkImage(experience.imageUrl)
        )
      ),
      child:Stack(alignment: Alignment.center,
        children: [
          Positioned.fill(child: Container(width: size.width,
          height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,
                colors: [
                  Colors.transparent,  Colors.transparent,  Colors.transparent,
                  Colors.black.withOpacity(.8)
                ]
              )
            ),
          )),
          Positioned(
            bottom: size.height*.05,
            child: Container(
              width: size.width,
              height: size.height*.07,
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(experience.title,style: TextStyle(
                      color: Colors.white.withOpacity(.8),
                      fontWeight: FontWeight.w300,fontFamily: 'Casakova',
                      fontSize: size.width*.07,
                    letterSpacing: 1.2
                  ),),
                  Text(experience.location,style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Casakova',
                      fontWeight: FontWeight.w500,
                      fontSize: size.width*.08
                  ),)
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
