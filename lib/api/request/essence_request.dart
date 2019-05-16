class EssenceRequest {
  final String key;
  int pageNo;
  int pageSize;

  EssenceRequest(this.key);

  Map<String, dynamic> toJson() => {'key': key, 'ps': pageSize, 'pno': pageNo};
}
