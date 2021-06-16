import 'package:flutter/material.dart';
import 'package:challenge_boat/utils/external_icons.dart';
import 'package:challenge_boat/views/chekout_page.dart';
import 'package:challenge_boat/widgets/boat_details_container.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
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
                    color: Colors.white,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Icon(
                    ExternalIcons.heart_empty,
                    size: 26,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 20, 0, 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Atlantida",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Yacht",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Text(
                              "\$",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "1000",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              " / day",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        BoatDetailsContainer(),
                        BoatDetailsContainer(),
                        BoatDetailsContainer(),
                      ],
                    ),
                    SizedBox(width: 22),
                    Expanded(
                      child: Image.asset(
                        "assets/images/yacht_1.2.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          height: 62,
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Rent Now",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_rounded,
                        color: Theme.of(context).buttonColor),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
