import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  page2({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEBDED1),
        body: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/Mask group.png"),
            ),
            Text("@cassiejo"),
            Text("Cassie Jones"),
            Text("patient |Joined Jan 2023"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 81,
                      width: 103,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff3f8cff)),
                      child: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()))),
                  Container(
                    height: 81,
                    width: 103,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff3f8cff)),
                  ),
                  Container(
                      height: 81,
                      width: 103,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff3f8cff)),
                      child: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder())))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: h / 8,
              width: w,
            )
          ],
        ),
      ),
    );
  }
}
