import 'package:bussines/data/model.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  slider({
    super.key,
  });

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class _SliderState extends State<Slider> {
  late Future<List<slide>> _slides;

  @override
  void initState() {
    super.initState();
    _slides = fetchSlides();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<slide>>(
      future: _slides,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show loading indicator while data is being fetched
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // Use CarouselSlider with dynamic data
          return CarouselSlider(
            items: snapshot.data!.map((slide) {
              return Container(
                margin: const EdgeInsets.only(top: 8, right: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(slide.file)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 112, 170, 218),
                      Color.fromARGB(255, 44, 133, 206),
                      Color.fromARGB(255, 97, 169, 228),
                      Color.fromARGB(255, 3, 71, 128),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     SizedBox(
                      //       width: 120,
                      //     ),
                      //     Text(
                      //       slide!.,
                      //       style: TextStyle(
                      //         color: Colors.orange,
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w800,
                      //       ),
                      //     ),
                      //     Text(
                      //       slide.,
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Text(
                      //   slide.,
                      //   style: TextStyle(color: Colors.white, fontSize: 14),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 180),
                      //   child: Text(
                      //     slide.,
                      //     style: TextStyle(color: Colors.white, fontSize: 12),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(right: 160),
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button click
                          },
                          child: Text(
                            "Join",
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 150,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
            ),
          );
        }
      },
    );
  }
}

    // return FutureBuilder(
    //   future: _slides,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return CircularProgressIndicator();
    //     } else if (snapshot.hasError) {
    //       return Text('Error: ${snapshot.error}');
    //     } else {
    //       List<slide> slides = snapshot.data as List<slide>;
    //       return CarouselSlider(
    //         items: slides.map((slide) {
    //           return Builder(
    //             builder: (BuildContext context) {
    //               return Container(
    //                 width: MediaQuery.of(context).size.width,
    //                 margin: EdgeInsets.symmetric(horizontal: 5.0),
    //                 child: Image.network(
    //                   slide.file,
    //                   fit: BoxFit.cover,
    //                 ),
    //               );
    //             },
    //           );
    //         }).toList(),
    //         options: CarouselOptions(
    //           height: 200.0,
    //           aspectRatio: 16 / 9,
    //           viewportFraction: 0.8,
    //           initialPage: 0,
    //           enableInfiniteScroll: true,
    //           reverse: false,
    //           autoPlay: true,
    //           autoPlayInterval: Duration(seconds: 3),
    //           autoPlayAnimationDuration: Duration(milliseconds: 800),
    //           autoPlayCurve: Curves.fastOutSlowIn,
    //           enlargeCenterPage: true,
    //           scrollDirection: Axis.horizontal,
    //         ),
    //       );
    //     }
    //   },
    // );

