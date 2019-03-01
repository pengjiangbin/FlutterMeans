class HomePost{
  final String uid;

  HomePost(this.uid);

  Map<String,dynamic> toJson()=>
      {'uid':uid};
}