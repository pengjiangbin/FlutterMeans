import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PhotoPage extends StatefulWidget {

  final String imageUrl;
  final int index;
  final List<Widget> imageList;

  const PhotoPage({Key key, this.imageUrl, this.index, this.imageList}) : super(key: key);

  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Hero(tag: widget.imageUrl,child:Container(
      color: Colors.black,
      child: CachedNetworkImage(imageUrl: widget.imageUrl),
    ) ,);
  }
}
