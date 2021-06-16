import 'package:flutter/material.dart';
import 'package:challenge_boat/widgets/payment_method_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:delayed_display/delayed_display.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int currentItem = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: PreferredSize(
        preferredSize: Size(width, height),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 20, 32, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Checkout",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 52),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 78,
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Days",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 6, 8, 6),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 8),
                                      Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Spacer(),
                                      Text(
                                        "2",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 2, 8, 4),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12),
                                          ),
                                        ),
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          width: 2,
                          height: 78,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        Expanded(
                          child: Container(
                            height: 78,
                            padding: const EdgeInsets.fromLTRB(26, 0, 26, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  "\$2000",
                                  style: TextStyle(
                                    fontSize: 32,
                                    color: Theme.of(context).buttonColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 52),
                    RichText(
                      text: TextSpan(
                        text: "Payment ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "Cards",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: DelayedDisplay(
                fadingDuration: Duration(milliseconds: 800),
                slidingBeginOffset: Offset(0.32, 0),
                child: Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption:
                      CustomLayoutOption(startIndex: -1, stateCount: 4)
                          .addTranslate([
                    Offset(-320.0, -16.0),
                    Offset(-72.0, 0.0),
                    Offset(140.0, -16.0),
                    Offset(460.0, -16.0)
                  ]).addScale(
                    [
                      0.8,
                      0.9,
                      0.8,
                      0.7,
                    ],
                    Alignment.centerRight,
                  ),
                  itemWidth: width * .54,
                  itemHeight: height * .46 - 64,
                  itemCount: 10,
                  onIndexChanged: (index) {
                    currentItem = index;
                  },
                  itemBuilder: (context, index) {
                    return PaymentMethod(isCurrentItem: currentItem == index);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).buttonColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                height: 62,
                margin: const EdgeInsets.fromLTRB(32, 0, 8, 0),
                padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Pay Now",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).buttonColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              height: 62,
              width: 62,
              margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: Image.asset("assets/images/face_id.png",
                  color: Colors.white, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
