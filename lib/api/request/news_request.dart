class NewsRequest {
  final String key;
  final String type;

  NewsRequest(this.key, this.type);

  Map<String, dynamic> toJson() => {'key': key, 'type': type};
}
