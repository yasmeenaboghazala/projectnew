import 'package:bussines/screens/onboarding/onboaridng_screen.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();

    // قم بتأخير التنفيذ لمدة 5 ثوانٍ باستخدام Future.delayed
    Future.delayed(const Duration(seconds: 4), () {
      // بعد مضي 5 ثوانٍ، قم بالانتقال إلى الصفحة الثانية
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xff4654db),
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("images/s-removebg-preview.png")],
        ),
      ),
    );
  }
}
