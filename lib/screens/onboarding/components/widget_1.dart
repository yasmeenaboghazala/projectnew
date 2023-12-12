import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 80),
          child: Image.asset(
            "images/splash2.png",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "الفيزياء بطريقة جديدة وممتعة",
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
              "افضل نظام متابعة من متخصصين ",
              style: TextStyle(
                  color: Color(0xff9d9d9d),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "معاك لحظة بلحظة",
              style: TextStyle(
                  color: Color(0xff9d9d9d),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),

        // ElevatedButton(
        //   child: Text(
        //     "انهي",
        //   ),
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.green,
        //   ),
        //   onPressed: () {},
        // ),
      ],
    );
  }
}
