// To parse this JSON data, do
//
//     final photo = photoFromJson(jsonString);

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/*------------------------------------------------------------------- */
//modeling data with class

Photo photoFromJson(String str) => Photo.fromJson(json.decode(str));

class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );
}

