import 'package:json_annotation/json_annotation.dart';

part 'news_response.g.dart';

@JsonSerializable()
class NewsResponse{
  final String reason;
  final News result;


  NewsResponse(this.reason, this.result);

  factory NewsResponse.fromJson(Map<String,dynamic> json)=>_$NewsResponseFromJson(json);
}

@JsonSerializable()
class News{
  final String stat;
  final List<NewsItem> data;


  News(this.stat, this.data);

  factory News.fromJson(Map<String,dynamic> json)=>_$NewsFromJson(json);
}

@JsonSerializable()
class NewsItem{
  @JsonKey(name: 'uniquekey')
  final String uniqueKey;
  final String title;
  final String date;
  final String category;
  @JsonKey(name:'author_name')
  final String authorName;
  final String url;
  @JsonKey(name: 'thumbnail_pic_s')
  final String firstPic;
  @JsonKey(name: 'thumbnail_pic_s02')
  final String secondPic;
  @JsonKey(name: 'thumbnail_pic_s03')
  final String thirdPic;


  NewsItem(this.uniqueKey, this.title, this.date, this.category,
      this.authorName, this.url, this.firstPic, this.secondPic, this.thirdPic);

  factory NewsItem.fromJson(Map<String,dynamic> json)=>_$NewsItemFromJson(json);

}