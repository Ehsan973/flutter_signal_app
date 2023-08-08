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
      backgroundColor: Colors.deepOrangeAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'خوش آمدید',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.login,
                    size: 40,
                  ),
                ],
              ),
              Image(
                image: AssetImage("images/welcome.png"),
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
                  foregroundColor: Colors.white,
                  minimumSize: Size(200, 40),
                  side: BorderSide(
                    color: Colors.white,
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
                  foregroundColor: Colors.white,
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
    );
  }
}
