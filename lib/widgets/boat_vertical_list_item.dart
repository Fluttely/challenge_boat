import 'package:flutter/material.dart';

class BoatVerticalListItem extends StatelessWidget {
  const BoatVerticalListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      height: 80,
      width: width,
      // color: Colors.green,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
              color: Theme.of(context).accentColor,
            ),
            height: 80,
            width: 80,
            child: Image.asset(
              "assets/images/yacht_1.png",
              width: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ocean Yacht",
                  style: TextStyle(
                    fontSize: 18,
                    // color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.grey),
                    Text(
                      "4.6",
                      style: TextStyle(
                        fontSize: 18,
                        // color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
