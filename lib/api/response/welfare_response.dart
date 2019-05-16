import 'package:json_annotation/json_annotation.dart';

part 'welfare_response.g.dart';

@JsonSerializable()
class WelfareResponse {
  final bool error;
  final List<WelfareItem> results;

  WelfareResponse(this.error, this.results);

  factory WelfareResponse.fromJson(Map<String, dynamic> json) =>
      _$WelfareResponseFromJson(json);
}


@JsonSerializable()
class WelfareItem {
  final String url;

  WelfareItem(this.url);

  factory WelfareItem.fromJson(Map<String, dynamic> json) =>
      _$WelfareItemFromJson(json);
}
