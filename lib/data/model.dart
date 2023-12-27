import 'dart:convert';

import 'package:http/http.dart' as http;

// class Slide {
//   final int id;
//   final String title;
//   final String image;
//   final String description;
//   final String created_at;
//   final String updated_at;

//   Slide(
//       {required this.id,
//       required this.title,
//       required this.image,
//       required this.description,
//       required this.created_at,
//       required this.updated_at});

//   factory Slide.fromJson(Map<String, dynamic> json) {
//     return Slide(
//       id: json['imageUrl'] ?? '',
//       title: json['imageUrl'] ?? '',
//       image: json['imageUrl'] ?? '',
//       description: json['description'] ?? '',
//       created_at: json['created_at'] ?? '',
//       updated_at: json['created_at'] ?? '',
//     );
//   }
// }

// Future<List<Slide>> fetchSlides() async {
//   final response = await http.get(Uri.parse('https://elmazone.topbusiness.io/api/on-boarding'));

//   if (response.statusCode == 200) {
//     final List<dynamic> data = json.decode(response.body);
//     return data.map((json) => Slide.fromJson(json)).toList();
//   } else {
//     throw Exception('Failed to load slides');
//   }
// }
class slide {
  final int id;
  final String file;
  final String type;
  final String link;
  final String createdAt;
  final String updatedAt;

  slide({
    required this.id,
    required this.file,
    required this.type,
    required this.link,
    required this.createdAt,
    required this.updatedAt,
  });

  factory slide.fromJson(Map<String, dynamic> json) {
    return slide(
      id: json['id'] ?? 0,
      file: json['file'] ?? '',
      type: json['type'] ?? '',
      link: json['link'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }
}

List<Map<String, dynamic>> getSliders() {
  return [
    {
      "id": 2,
      "file":
          "https://elmazone.topbusiness.io/assets/uploads/Slider/image/77871699098405.jpg",
      "type": "image",
      "link":
          "https://www.google.com.eg/search?q=%D9%81%D9%84%D8%B3%D8%B7%D9%8A%D9%86&tbm=isch&hl=ar",
      "created_at": "2023-03-26",
      "updated_at": "2023-03-26",
    },
    {
      "id": 3,
      "file":
          "https://elmazone.topbusiness.io/assets/uploads/Slider/image/92091699098208.jpg",
      "type": "image",
      "link": "https://play.google.com/store/apps/details?id=com.photon.quiz",
      "created_at": "2023-03-26",
      "updated_at": "2023-03-26",
    },
    {
      "id": 4,
      "file":
          "https://elmazone.topbusiness.io/assets/uploads/Slider/image/92451699098180.jpg",
      "type": "image",
      "link": "https://whatsapp.com/channel/0029Va6EXwGGJP8OIlZPvB23",
      "created_at": "2023-10-20",
      "updated_at": "2023-10-20",
    },
  ];
}

Future<List<slide>> fetchSlides() async {
  final response = await http
      .get(Uri.parse('https://elmazone.topbusiness.io/api/auth/home-page'));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((json) => slide.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load slides');
  }
}
