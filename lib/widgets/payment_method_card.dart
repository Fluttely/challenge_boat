import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({Key? key, this.isCurrentItem = false}) : super(key: key);
  final bool isCurrentItem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
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
          color: isCurrentItem
              ? Theme.of(context).primaryColor
              : Theme.of(context).disabledColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Image.asset(
                      "assets/images/chip.png",
                      width: 32,
                    ),
                  ),
                  Spacer(),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      Icons.drag_indicator_sharp,
                      color: isCurrentItem ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "2293",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: isCurrentItem ? Colors.white : Colors.black,
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
                    "\$23 890",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: isCurrentItem ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        "Platinum",
                        style: TextStyle(
                           color: isCurrentItem ? Colors.white.withOpacity(0.6) : Colors.black.withOpacity(0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/images/mastercard.png",
                        width: 52,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
