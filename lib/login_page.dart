import 'package:flutter/material.dart';
import 'package:signal_app/blog_page.dart';
import 'package:signal_app/password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VIP ورود به حساب سیگنال',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.login,
                      size: 35,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage("images/w.png"),
                ),
                OutlinedButton(
                  onPressed: () {
                    navigateToPage(context, BlogScreen());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    minimumSize: Size(200, 40),
                    side: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ثبت نام'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: Size(200.0, 42.0),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    navigateToPage(context, PasswordRicovery());
                  },
                  child: Text('فراموشی رمز عبور'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
