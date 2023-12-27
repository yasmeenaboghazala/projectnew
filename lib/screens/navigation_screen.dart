import 'package:bussines/screens/MyHomePage.dart';
import 'package:bussines/splash/1.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int indexSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[indexSelect],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            indexSelect = index;
            setState(() {});
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_open_outlined,
                color: Colors.blue,
                size: 35,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
                color: Colors.blue,
                size: 35,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
                size: 35,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note_alt_outlined,
                color: Colors.blue,
                size: 35,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_camera_back,
                color: Colors.blue,
                size: 35,
              ),
              label: 'School',
            ),
          ],
        ));
  }

  List<Widget> screens = [
    MyHomePage(),
    splash(),
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
  ];
}
