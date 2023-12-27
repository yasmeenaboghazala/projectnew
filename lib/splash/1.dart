import 'package:bussines/screens/navigation_screen.dart';
import 'package:bussines/screens/onboarding/onboaridng_screen.dart';
import 'package:flutter/material.dart';
import 'package:bussines/shared/Shard_prefrence.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();

    // قم بتأخير التنفيذ لمدة 5 ثوانٍ باستخدام Future.delayed
    Future.delayed(const Duration(seconds: 5), () {
      Widget start;
      if (shard.pref.getString("email") != null) {
        start = NavigationScreen();
      } else {
        start = OnBoardingScreen();
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => start,
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
