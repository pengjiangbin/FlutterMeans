// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return NewsResponse(
      json['reason'] as String,
      json['result'] == null
          ? null
          : News.fromJson(json['result'] as Map<String, dynamic>));
}

Map<String, dynamic> _$NewsResponseToJson(NewsResponse instance) =>
    <String, dynamic>{'reason': instance.reason, 'result': instance.result};

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
      json['stat'] as String,
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : NewsItem.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$NewsToJson(News instance) =>
    <String, dynamic>{'stat': instance.stat, 'data': instance.data};

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) {
  return NewsItem(
      json['uniquekey'] as String,
      json['title'] as String,
      json['date'] as String,
      json['category'] as String,
      json['author_name'] as String,
      json['url'] as String,
      json['thumbnail_pic_s'] as String,
      json['thumbnail_pic_s02'] as String,
      json['thumbnail_pic_s03'] as String);
}

Map<String, dynamic> _$NewsItemToJson(NewsItem instance) => <String, dynamic>{
      'uniquekey': instance.uniqueKey,
      'title': instance.title,
      'date': instance.date,
      'category': instance.category,
      'author_name': instance.authorName,
      'url': instance.url,
      'thumbnail_pic_s': instance.firstPic,
      'thumbnail_pic_s02': instance.secondPic,
      'thumbnail_pic_s03': instance.thirdPic
    };
