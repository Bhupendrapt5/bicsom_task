import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsModel with ChangeNotifier {
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;

  NewsModel(
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
  );
  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}

@JsonSerializable()
class Source {
  @JsonKey(name: 'id')
  final String sourceId;
  @JsonKey(name: 'name')
  final String sourceName;

  Source(this.sourceId, this.sourceName);
  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
