import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_live/api/gank_http_manager.dart';
import 'package:flutter_live/api/home_dao.dart';
import 'package:flutter_live/api/response/welfare_response.dart';
import 'package:flutter_live/page/photo_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WelfarePage extends StatefulWidget {
  @override
  _WelfarePageState createState() => _WelfarePageState();
}

class _WelfarePageState extends State<WelfarePage> with AutomaticKeepAliveClientMixin{
  List<WelfareItem> welfareList;

  @override
  void initState() {
    super.initState();
    welfareList = [];
    getWelfareData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发现'),
        centerTitle: true,
      ),
      body: StaggeredGridView.countBuilder(
          primary: false,
          crossAxisCount: 4,
          itemCount: welfareList.length,
          itemBuilder: (context, index) => GestureDetector(
              child: _buildImage(welfareList[index].url),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhotoPage(
                              imageUrl: welfareList[index].url,
                            )));
              }),
          staggeredTileBuilder: (index) => StaggeredTile.fit(2),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0),
    );
  }

  _buildImage(String image) {
    return Hero(
      tag: image,
      child: CachedNetworkImage(
        placeholder: (context, url) => _buildPlaceImage(),
        imageUrl: image,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  _buildPlaceImage() {
    return Image.asset('images/place.jpg', fit: BoxFit.cover);
  }

  getWelfareData() async {
    WelfareResponse response = await HomeDao.getWelfareData();
    welfareList = response.results;
    setState(() {});
  }

  @override
  bool get wantKeepAlive => true;
}
