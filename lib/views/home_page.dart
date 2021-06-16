import 'package:flutter/material.dart';
import 'package:challenge_boat/widgets/boat_card.dart';
import 'package:challenge_boat/widgets/boat_vertical_list_item.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:delayed_display/delayed_display.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int selected = 0;
    return Scaffold(
      extendBody: true,
      body: PreferredSize(
        preferredSize: Size(width, height),
        child: Stack(
          children: [
            PreferredSize(
              preferredSize: Size(width, height),
              child: Row(
                children: [
                  Spacer(),
                  Container(
                    color: Theme.of(context).disabledColor,
                    width: width * .3,
                  ),
                ],
              ),
            ),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 32.0),
                      child: Icon(
                        Icons.menu,
                        size: 26,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yacht",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Charters",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: height * .5,
                    width: width,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(32, 52, 32, 52),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Motor-sailing",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selected != 0
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                    selected != 0
                                        ? Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                              color: Colors.black,
                                            ),
                                            height: 8,
                                            width: 8,
                                          )
                                        : Container(),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "Sailing",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selected != 0
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                    selected != 0
                                        ? Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                              color: Colors.black,
                                            ),
                                            height: 8,
                                            width: 8,
                                          )
                                        : Container(),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "Motor",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selected == 0
                                            ? Colors.black
                                            : Colors.grey,
                                      ),
                                    ),
                                    selected == 0
                                        ? Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8),
                                              ),
                                              color: Colors.black,
                                            ),
                                            height: 8,
                                            width: 8,
                                          )
                                        : Container(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        DelayedDisplay(
                          fadingDuration: Duration(milliseconds: 800),
                          slidingBeginOffset: Offset(0.32, 0),
                          child: Swiper(
                            layout: SwiperLayout.CUSTOM,
                            customLayoutOption: CustomLayoutOption(
                                    startIndex: -1, stateCount: 4)
                                .addTranslate([
                              Offset(-320.0, -20.0),
                              Offset(16.0, 0.0),
                              Offset(276.0, -20.0),
                              Offset(460.0, -20.0)
                            ]).addScale(
                              [
                                0.8,
                                0.9,
                                0.8,
                                0.7,
                              ],
                              Alignment.centerRight,
                            ).addOpacity([
                              0.0,
                              1,
                              0.6,
                              0.3,
                            ]),
                            itemWidth: width * .68,
                            itemHeight: height * .5 - 64,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return BoatCard();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      "Poppular",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.all(32),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return DelayedDisplay(child: BoatVerticalListItem());
                      },
                      childCount: 6,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
