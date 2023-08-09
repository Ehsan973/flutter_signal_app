import 'package:flutter/material.dart';
import 'package:signal_app/custom_widgets/post_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Widget> listBlogWidget = [
    getBlogPost(
        imageName: 's.png',
        title: 'برای 17 مرداد Safemoon :سیگنال خرید  ',
        buy_price: 14120,
        sell_price: 16231),
    getBlogPost(
        imageName: 'a.png',
        title: 'برای 17 مرداد Alchemy :سیگنال خرید  ',
        buy_price: 12534,
        sell_price: 14210),
    getBlogPost(
      imageName: 'c.png',
      title: 'برای 17 مرداد Cosmos :سیگنال خرید  ',
      buy_price: 2092,
      sell_price: 2403,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'VIP اخبار و سیگنال های',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...listBlogWidget, //Spread operator
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
