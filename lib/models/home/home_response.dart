import 'dart:convert';

import 'package:sub_category_demo/models/home/home_entity.dart';

class HomeResponse {
  final List<HomeItemResponse>? items;

  HomeResponse({required this.items});

  factory HomeResponse.fromJson(String jsn) =>
      HomeResponse.fromMap(json.decode(jsn));

  factory HomeResponse.fromMap(dynamic data) => HomeResponse(
        items: (data as List).map((e) => HomeItemResponse.fromMap(e)).toList(),
      );
}

class HomeItemResponse {
  final String? id;
  final String? imageUrl;
  final String? title;
  final String? desc;

  HomeItemResponse({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.desc,
  });

  factory HomeItemResponse.fromJson(String jsn) =>
      HomeItemResponse.fromMap(json.decode(jsn));

  factory HomeItemResponse.fromMap(Map<String, dynamic> data) =>
      HomeItemResponse(
        id: data['id'],
        imageUrl: data['imageUrl'],
        title: data['title'],
        desc: data['desc'],
      );
}

///Mapper
///Map from response to app data entity
///

extension EHomeResponse on HomeResponse {
  HomeEntity toEntity() {
    return HomeEntity(items: items.toListEntity());
  }
}

extension EListHomeResponse on List<HomeItemResponse>? {
  List<HomeItemEntity> toListEntity() {
    if (this != null) {
      return this!.map((e) => e.toEntity()).toList();
    }
    return List<HomeItemEntity>.empty();
  }
}

extension EHomeItemResponse on HomeItemResponse {
  HomeItemEntity toEntity() {
    return HomeItemEntity(
      id: id ?? '',
      imageUrl: imageUrl ?? '',
      title: title ?? '',
      desc: desc ?? '',
    );
  }
}
