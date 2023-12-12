import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 50),
          child: Container(
            width: 200,
            height: 250,
            child: Image.asset(
              "images/splash3.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "اشترك واحصل علي المراجعات",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ادخل كود الاشتراك , وابدا ",
              style: TextStyle(
                  color: Color(0xff9d9d9d),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "رحلتك التعليميه",
              style: TextStyle(
                  color: Color(0xff9d9d9d),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
