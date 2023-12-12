import 'package:flutter/material.dart';

class Widget3 extends StatelessWidget {
  const Widget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Center(
          child: Image.asset(
            "images/splash4.png",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "مرحبا بك عزيزي الطالب",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "هنساعدك تتعلم الفيزياء بطريقه",
              style: TextStyle(
                  color: Color(0xff9d9d9d),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "سهله ومبسطه ",
              style: TextStyle(
                  color: Color(0xff9d9d9d),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    ));
  }
}
