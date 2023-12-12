import 'package:flutter/material.dart';

class scroll extends StatelessWidget {
  const scroll({
    super.key,
    required this.monthes,
    required this.colory,
  });

  final MonthesModel monthes;
  final Color colory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: monthes.content.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colory,
              ),
              child: Card(
                elevation: 0,
                color: colory,
                child: SizedBox(
                  height: 40,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          monthes.content[index].name,
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                        Text(
                          monthes.content[index].time,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}

class MonthesModel {
  final int id;
  final String name;
  final int price;
  final String freeStatus;
  final List<ContentModel> content;

  MonthesModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.freeStatus,
      required this.content});

  factory MonthesModel.fromJson(jsonData) {
    return MonthesModel(
        id: jsonData['id'],
        name: jsonData['name'],
        price: jsonData['price'],
        freeStatus: jsonData['free_status'],
        content: ContentModel.fromJsonList(
          (jsonData['content'] as List).cast<Map<String, dynamic>>(),
        ));
  }
}

class ContentModel {
  final String name;
  final int id;
  final String time;

  ContentModel({required this.name, required this.id, required this.time});

  factory ContentModel.fromJson(jsonData) {
    return ContentModel(
        id: jsonData['id'], name: jsonData['name'], time: jsonData['time']);
  }

  static List<ContentModel> fromJsonList(List<Map<String, dynamic>> jsonList) {
    return jsonList.map((json) => ContentModel.fromJson(json)).toList();
  }
}
