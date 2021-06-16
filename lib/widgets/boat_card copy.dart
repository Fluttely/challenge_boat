import 'package:challenge_boat/utils/External_icons.dart';
import 'package:challenge_boat/views/details_page.dart';
import 'package:flutter/material.dart';

class BoatCard extends StatefulWidget {
  const BoatCard({Key? key}) : super(key: key);

  @override
  _BoatCardState createState() => _BoatCardState();
}

class _BoatCardState extends State<BoatCard> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(32),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8.0,
                  spreadRadius: 4.0,
                ),
              ],
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/insta.png",
                        width: 26,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "#yaching",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            liked = !liked;
                          });
                        },
                        icon: Icon(
                          liked
                              ? ExternalIcons.heart_1
                              : ExternalIcons.heart_empty,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Atlantida",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Yacht",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 96,
            right: 20,
            child: Image.asset(
              "assets/images/yacht_1.png",
              // width: 500,
              height: 130,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
