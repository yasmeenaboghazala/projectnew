// import 'package:bussines/card.dart';
import 'package:bussines/screens/card.dart';
import 'package:bussines/screens/getaize.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 127, 187, 236),
                  Color.fromARGB(255, 57, 161, 247)
                ]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              width: MediaQuery.of(context).size.width / 6,
              height: getSize(context) / 5,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.notifications)),
                  const SizedBox(
                    width: 110,
                  ),
                  const Column(children: [
                    Text(
                      "اسم الطالب",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text("الصف الثالث",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Text(" الترم الاول",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ]),
                  const Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      child: CircleAvatar(
                          backgroundImage: AssetImage(
                        "images/png.png",
                      )),
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  margin: const EdgeInsets.only(top: 8, right: 5),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 112, 170, 218),
                          Color.fromARGB(255, 44, 133, 206),
                          Color.fromARGB(255, 97, 169, 228),
                          Color.fromARGB(255, 3, 71, 128),
                        ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              "سنتر الرحمه",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              "الان مع ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          " يمكنك حضور حصتك اونلاين مع اي معلم",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 180),
                          child: Text(
                            "مع اختبارك",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 9,
                        // ),
                        Padding(
                            padding: const EdgeInsets.only(right: 160),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "انضم",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 22),
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              ],
              options: CarouselOptions(
                height: 150,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      // Where the linear gradient begins and ends
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,

                      colors: [
                        Color.fromARGB(255, 112, 170, 218),
                        Color.fromARGB(255, 44, 133, 206)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 230,
                            alignment: Alignment.centerRight,
                            child: const Text(
                              "امتحان اللايف",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                                "عندنا امتحان لايف هيبدا الساعه 10 مساء",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                          )
                        ],
                      ),
                      Image.asset(
                        "images/chat-removebg-preview.png",
                        width: 40,
                        height: 100,
                      ),
                    ],
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 210),
              child: Text(
                "فيديوهات تمهيديه",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 210, right: 10),
              color: Colors.black,
              width: 50,
              height: 1,
            ),
            SizedBox(
              // color: Colors.blue,

              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) => card()),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: Text(
                    "اختر الفصل",
                    style: TextStyle(color: Colors.orange, fontSize: 23),
                  ),
                ),
                Text(
                  " ابدا ذاكر ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 210, right: 10),
              color: Colors.black,
              width: 50,
              height: 1,
            ),
            Wrap(
              spacing: 2, // المسافة الأفقية بين العناصر
              runSpacing: 1, // المسافة الرأسية بين الصفوف
              children: <Widget>[
                buildImageWidget('images/chat-removebg-preview.png',
                    Colors.blue, "اسم الفصل"),
                buildImageWidget('images/che.webp', Colors.green, "اسم الفصل"),
                buildImageWidget(
                    'images/che2.webp', Colors.orange, "اسم الفصل"),
                buildImageWidget('images/cc.png', Colors.red, "اسم الفصل"),
                buildImageWidget('images/c5.webp', Colors.purple, "اسم الفصل"),
                buildImageWidget('images/che.webp', Colors.green, "اسم الفصل"),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 220),
              child: Text(
                " المراجعه النهائيه",
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 230, right: 10),
              color: Colors.black,
              width: 35,
              height: 1,
            ),
            Container(
              // color: Colors.blue,
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) =>
                      const card()),
            ),
          ],
        ),
      ),
    );
  }
}

buildImageWidget(String image, Color color, String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        )
      ],
    ),
  );
}

// import 'package:bussines/card.dart';
// import 'package:bussines/screens/getaize.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import 'card.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Color.fromARGB(255, 127, 187, 236),
//                 Color.fromARGB(255, 57, 161, 247)
//               ]),
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(30)),
//             ),
//             width: MediaQuery.of(context).size.width / 6,
//             height: getSize(context) / 5,
//             child: Row(
//               children: [
//                 const Flexible(
//                   child: Padding(
//                     padding: EdgeInsets.only(top: 10, right: 20),
//                     child: Row(children: [
//                       Flexible(
//                         child: Padding(
//                           padding: EdgeInsets.only(
//                             left: 10,
//                           ),
//                           child: CircleAvatar(
//                               backgroundImage: AssetImage(
//                             "images/png.png",
//                           )),
//                         ),
//                       ),
//                       Column(children: [
//                         Text(
//                           "اسم الطالب",
//                           style: TextStyle(
//                               color: Colors.white, fontWeight: FontWeight.bold),
//                         ),
//                         Text("الصف الثالث",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold)),
//                         Text(" الترم الاول",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold))
//                       ]),

//                       //   ) ),
//                     ]),
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.favorite),
//                 ),
//                 IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
//                 IconButton(
//                     onPressed: () {}, icon: const Icon(Icons.notifications)),
//               ],
//             ),
//           ),
//           CarouselSlider(
//             items: [
//               Container(
//                 height: 180,
//                 margin: const EdgeInsets.only(top: 8, right: 5),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Color.fromRGBO(54, 177, 238, 1),
//                     Color.fromRGBO(112, 196, 238, 1),
//                     Color.fromRGBO(184, 228, 250, 1),
//                     Color.fromRGBO(8, 169, 250, 1),
//                   ]),
//                   //color: Colors.purple,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Align(
//                   alignment: Alignment.bottomLeft,
//                   child: Column(
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.only(top: 10),
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 100),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "الان مع ",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Text(
//                                 "سنتر الرحمه",
//                                 style: TextStyle(
//                                   color: Colors.orange,
//                                   fontSize: 28,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 9,
//                       ),
//                       const Text(
//                         " يمكنك حضور حصتك اونلاين مع اي معلم",
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(left: 180),
//                         child: Text(
//                           "مع اختبارك",
//                           style: TextStyle(color: Colors.white, fontSize: 20),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 9,
//                       ),
//                       Padding(
//                           padding: const EdgeInsets.only(right: 160),
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             child: const Text(
//                               "انضم",
//                               style:
//                                   TextStyle(color: Colors.blue, fontSize: 22),
//                             ),
//                           ))
//                     ],
//                   ),
//                 ),
//               )
//             ],
//             options: CarouselOptions(
//               // تكوين خيارات السياروسيل
//               height: 200.0,
//               enlargeCenterPage: true,
//               autoPlay: true,
//               aspectRatio: 16 / 9,
//               autoPlayCurve: Curves.fastOutSlowIn,
//               enableInfiniteScroll: true,
//               autoPlayAnimationDuration: const Duration(milliseconds: 800),
//               // viewportFraction: 0.8,
//             ),
//           ),
//           Container(
//               margin: const EdgeInsets.only(
//                   top: 10, bottom: 10, left: 14, right: 14),
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   // Where the linear gradient begins and ends
//                   begin: Alignment.topRight,
//                   end: Alignment.bottomLeft,

//                   colors: [
//                     Color.fromARGB(255, 112, 170, 218),
//                     Color.fromARGB(255, 44, 133, 206)
//                   ],
//                 ),
//                 borderRadius: BorderRadius.circular(35),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.blue,
//                     blurRadius: 2.0,
//                     spreadRadius: 2.0,
//                     offset: Offset(0.0, 0.0),
//                   )
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   const Column(
//                     children: [
//                       Text(
//                         "امتحان اللايف",
//                         style: TextStyle(
//                             color: Colors.orange,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 24),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(right: 10),
//                         child: Text("عندنا امتحان لايف هيبدا الساعه 10 مساء",
//                             style:
//                                 TextStyle(color: Colors.white, fontSize: 20)),
//                       )
//                     ],
//                   ),
//                   Image.asset(
//                     "images/chat-removebg-preview.png",
//                     width: 40,
//                     height: 100,
//                   ),
//                 ],
//               )),
//           const Padding(
//             padding: EdgeInsets.only(right: 20),
//             child: Text(
//               "فيديوهات تمهيديه",
//               style: TextStyle(
//                   color: Colors.orange,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(left: 210, right: 10),
//             color: Colors.black,
//             width: 50,
//             height: 1,
//           ),
//           SizedBox(
//             // color: Colors.blue,

//             height: 130,
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 2,
//                 itemBuilder: (BuildContext context, int index) => const card()),
//           ),
//           const Row(
//             children: [
//               Text(
//                 " ابدا ذاكر ",
//                 style: TextStyle(
//                   fontSize: 25,
//                 ),
//               ),
//               Text(
//                 "اختر الفصل",
//                 style: TextStyle(color: Colors.orange, fontSize: 23),
//               ),
//             ],
//           ),
//           Container(
//             margin: const EdgeInsets.only(left: 210, right: 10),
//             color: Colors.black,
//             width: 50,
//             height: 1,
//           ),
//           Wrap(
//             spacing: 2, // المسافة الأفقية بين العناصر
//             runSpacing: 1, // المسافة الرأسية بين الصفوف
//             children: <Widget>[
//               buildImageWidget(
//                   'images/chat-removebg-preview.png', Colors.blue, "اسم الفصل"),
//               buildImageWidget('images/che.webp', Colors.green, "اسم الفصل"),
//               buildImageWidget('images/che2.webp', Colors.orange, "اسم الفصل"),
//               buildImageWidget('images/cc.png', Colors.red, "اسم الفصل"),
//               buildImageWidget('images/c5.webp', Colors.purple, "اسم الفصل"),
//             ],
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           Text(
//             " المراجعه النهائيه",
//             style: TextStyle(
//                 color: Colors.orange,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold),
//           ),
//           Container(
//             margin: const EdgeInsets.only(left: 240, right: 10),
//             color: Colors.black,
//             width: 35,
//             height: 1,
//           ),
//           Container(
//             // color: Colors.blue,
//             height: 130,
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 2,
//                 itemBuilder: (BuildContext context, int index) => const card()),
//           ),
//           BottomNavigationBar(
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.menu_open_outlined,
//                   color: Colors.blue,
//                   size: 35,
//                 ),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.menu_book,
//                   color: Colors.blue,
//                   size: 35,
//                 ),
//                 label: 'Business',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.home,
//                   color: Colors.blue,
//                   size: 35,
//                 ),
//                 label: 'Business',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.note_alt_outlined,
//                   color: Colors.blue,
//                   size: 35,
//                 ),
//                 label: 'Business',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.video_camera_back,
//                   color: Colors.blue,
//                   size: 35,
//                 ),
//                 label: 'School',
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// buildImageWidget(String image, Color color, String text) {
//   return Padding(
//     padding: const EdgeInsets.all(10),
//     child: Column(
//       children: [
//         CircleAvatar(
//           radius: 37,
//           backgroundImage: AssetImage(
//             image,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 12),
//           child: Text(
//             text,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//           ),
//         )
//       ],
//     ),
//   );
// }
