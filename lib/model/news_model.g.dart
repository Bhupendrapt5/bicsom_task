// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return NewsModel(
    json['title'] as String,
    json['description'] as String,
    json['url'] as String,
    json['urlToImage'] as String ??
        'https://cdn4.wpbeginner.com/wp-content/uploads/2013/04/wp404error.jpg',
    json['publishedAt'] as String,
  );
}

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
    };

Source _$SourceFromJson(Map<String, dynamic> json) {
  return Source(
    json['id'] as String,
    json['name'] as String,
  );
}

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'id': instance.sourceId,
      'name': instance.sourceName,
    };
