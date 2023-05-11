import 'package:flutter/material.dart';

import 'fake_tab_card.dart';


class FakeTabBar extends StatelessWidget {
  final int trueIndex;

  FakeTabBar({this.trueIndex});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * .05),

      width: size.width,
      height: size.height * .03,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FakeTabCard(
            trueIndex: trueIndex,
            tabIndex: 1,
            title: "Overview",
          ),
          FakeTabCard(  trueIndex: trueIndex,
            tabIndex: 2,
            title: "Experience",
          ),
          FakeTabCard(  trueIndex: trueIndex,
            tabIndex: 3,
            title: "Hotels",
          ),
          FakeTabCard(  trueIndex: trueIndex,
            tabIndex: 4,
            title: "Photos",
          ),
        ],
      ),
    );
  }
}
