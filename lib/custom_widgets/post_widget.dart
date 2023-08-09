import 'package:flutter/material.dart';

Widget getBlogPost(
    {String imageName = 's.png',
    String title = 'برای 17 مرداد Safemoon :سیگنال خرید  ',
    int buy_price = 0,
    int sell_price = 0}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage('images/$imageName'),
        ),
      ),
      Text(
        '$title',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$sell_price : فروش روی',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          Icon(
            Icons.price_check,
            size: 23,
            color: Colors.red,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            '$buy_price : خرید روی ',
            style: TextStyle(color: Colors.green),
          ),
          Icon(
            Icons.sell,
            color: Colors.green,
            size: 16,
          ),
        ],
      ),
      Container(
        width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ),
    ],
  );
}
