// To parse this JSON data, do
//
//     final googleApiModel = googleApiModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GoogleApiModel googleApiModelFromJson(String str) =>
    GoogleApiModel.fromJson(json.decode(str));

String googleApiModelToJson(GoogleApiModel data) => json.encode(data.toJson());

class GoogleApiModel {
  GoogleApiModel({
    required this.data,
  });

  final List<DataGoogleApi> data;

  factory GoogleApiModel.fromJson(Map<String, dynamic> json) => GoogleApiModel(
        data: List<DataGoogleApi>.from(
            json["data"].map((x) => DataGoogleApi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DataGoogleApi {
  DataGoogleApi({
    required this.title,
    required this.urlImage,
    required this.urlWebview,
  });

  final String title;
  final String urlImage;
  final String urlWebview;

  factory DataGoogleApi.fromJson(Map<String, dynamic> json) => DataGoogleApi(
        title: json["title"],
        urlImage: json["url_image"],
        urlWebview: json["url_webview"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "url_image": urlImage,
        "url_webview": urlWebview,
      };
}
