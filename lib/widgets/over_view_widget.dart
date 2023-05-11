import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:vacation_mobile_ui/color.dart';
import 'package:vacation_mobile_ui/data/data.dart';
import 'package:vacation_mobile_ui/widgets/to_know.dart';
import 'package:vacation_mobile_ui/widgets/to_know_card.dart';


class OverViewWidget extends StatefulWidget {
  @override
  State<OverViewWidget> createState() => _OverViewWidgetState();
}

class _OverViewWidgetState extends State<OverViewWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: size.width * .15,top: size.height*.07),
        width: size.width,
        height: size.height,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(top: size.height*.03),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Overview",
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * .07),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(padding: EdgeInsets.only(top: size.height*.01),
                width: size.width,
                child: Text("London is the capital and largest city of England and the United Kingdom, with a population of\njust under 9 million.It stands on the River\nThames in south-east England at the head of a 50-mile estuary down to the North Sea, and has been a major settlement for two millennia The City of London, its ancient core and financial\ncentre,was founded by the Romans as\nLondinium and retains its medieval boundaries. The City of Westminster, to the west of the\nCity of London, has for centuries hosted the national government and parliament.",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: size.width*.038,),
                ),
              ),
            ),
            SliverPadding(padding: EdgeInsets.symmetric(vertical: size.height*.03),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Things to Know',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w700,fontSize: size.width*.05),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(right: size.width*.15),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: size.width * .03,
                    crossAxisSpacing: size.width * .05),
                delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
                  ToKnow toknow=toKnowList[index];
                  return AnimationConfiguration.staggeredList(position: index,
                  child: ScaleAnimation(
                      duration: Duration(milliseconds: 500),
                      child: FadeInAnimation(
                          duration: Duration(milliseconds: 500),
                          child: ToKnowCard(toKnow: toknow,))));
                }
                    ,childCount: toKnowList.length
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
