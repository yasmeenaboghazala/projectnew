import 'package:bussines/screens/MyHomePage.dart';
import 'package:bussines/screens/login.dart';
import 'package:bussines/screens/navigation_screen.dart';
import 'package:bussines/screens/onboarding/components/widget_1.dart';
import 'package:bussines/screens/onboarding/components/widget_2.dart';
import 'package:bussines/screens/onboarding/components/widget_3.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

int pageIndex = 0;
PageController pageController = PageController(initialPage: 0);

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: height / 8,
        ),
        SizedBox(
          height: height / 1.5,
          width: width,
          child: PageView(
            onPageChanged: (index) {
              pageChanged(index);
            },
            controller: pageController,
            scrollDirection: Axis.horizontal,
            children: const [
              Widget3(),
              Widget1(),
              Widget2(),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width / 25,
            ),
            pageIndex != 2
                ? TextButton(
                    onPressed: () => onTapSkip(),
                    child: const Text("تخطي",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        )))
                : const SizedBox(
                    width: 75,
                  ),
            Container(
              height: 9,
              width: 35,
              decoration: BoxDecoration(
                  color: pageIndex == 0 ? const Color(0xff4455d7) : Colors.grey,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              height: 9,
              width: 35,
              decoration: BoxDecoration(
                  color: pageIndex == 1 ? const Color(0xff4455d7) : Colors.grey,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
                height: 9,
                width: 35,
                decoration: BoxDecoration(
                    color:
                        pageIndex == 2 ? const Color(0xff4455d7) : Colors.grey,
                    borderRadius: BorderRadius.circular(10))),
            GestureDetector(
              onTap: () => onTapButton(),
              child: Container(
                alignment: Alignment.center,
                height: 55,
                width: 110,
                decoration: BoxDecoration(
                    color: const Color(0xff4555d6),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(pageIndex < 2 ? "التالي" : "انهي",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              width: width / 25,
            ),
          ],
        ),
      ]),
    );
  }

  pageChanged(int index) {
    pageIndex = index;
    setState(() {});
  }

  onTapSkip() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => NavigationScreen(),
        ),
        (route) => false);
  }

  onTapButton() {
    if (pageIndex < 2) {
      pageIndex++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate);
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => login(),
          ),
          (route) => false);
      setState(() {});
    }
  }
}
