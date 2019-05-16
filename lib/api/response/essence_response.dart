import 'package:json_annotation/json_annotation.dart';

part 'essence_response.g.dart';

@JsonSerializable()
class EssenceResponse {
  final String reason;
  final Essence result;

  EssenceResponse(this.reason, this.result);

  factory EssenceResponse.fromJson(Map<String,dynamic> json)=>_$EssenceResponseFromJson(json);
}

@JsonSerializable()
class Essence {
  final List<EssenceItem> list;
  final int totalPage;
  @JsonKey(name: 'ps')
  final int pageSize;
  @JsonKey(name: 'pno')
  final int pageNo;

  Essence(this.list, this.totalPage, this.pageSize, this.pageNo);

  factory Essence.fromJson(Map<String,dynamic> json)=>_$EssenceFromJson(json);
}

@JsonSerializable()
class EssenceItem {
  final String id;
  final String title;
  final String source;
  final String url;

  EssenceItem(this.id, this.title, this.source, this.url);

  factory EssenceItem.fromJson(Map<String,dynamic> json)=>_$EssenceItemFromJson(json);
}
