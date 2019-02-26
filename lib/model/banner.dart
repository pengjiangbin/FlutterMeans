class BannerModel {
  final int id;
  final String title;
  final String image;
  final int type;
  final String url;

  BannerModel(this.id, this.title, this.image, this.type, this.url);

  BannerModel.formJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        image = json['image'],
        type = json['type'],
        url = json['url'];

  Map<String, dynamic> toJson() =>
      {'id': id, 'title': title, 'image': image, 'type': type, 'url': url};
}
