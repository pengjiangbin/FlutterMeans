import 'package:flutter/material.dart';
import 'package:flutter_live/api/home_dao.dart';
import 'package:flutter_live/api/response/news_response.dart';
import 'package:flutter_live/page/web_page.dart';
import 'package:flutter_live/util/date_utils.dart';
import 'package:flutter_live/util/screen_utils.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsPage extends StatefulWidget {
  final String type;

  const NewsPage({Key key, this.type}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage>
    with AutomaticKeepAliveClientMixin {
  NewsResponse newsResponse;
  List<NewsItem> news = [];
  List<Widget> items = [];
  double imageWidth;
  double imageHeight;

  @override
  void initState() {
    super.initState();
    getHomeData(widget.type);
  }

  @override
  Widget build(BuildContext context) {
    imageWidth = (ScreenUtils.getScreenWidth(context) - 32) / 3;
    imageHeight = imageWidth / 4 * 3;
    return ListView.separated(
        itemCount: news.length,
        separatorBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: 1.0,
            color: Colors.grey[200],
          );
        },
        itemBuilder: (context, index) {
          NewsItem item = news[index];
          if (item.thirdPic != null) {
            return GestureDetector(
                child: buildMultiListItem(news[index]),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebPage(title: item.title,url: item.url,)));
                });
          } else {
            return GestureDetector(
                child: buildSingleListItem(news[index]),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebPage(title: item.title,url: item.url)));
                });
          }
        });
  }

  getHomeData(String type) async {
    newsResponse = await HomeDao.getNewsData(type);
    news = newsResponse.result.data;
    setState(() {});
  }

  buildSingleListItem(NewsItem data) {
    return Container(
      height: imageHeight + 24,
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(data.title,
                          style: TextStyle(
                              color: Colors.black, letterSpacing: 0.5)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(data.authorName,
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 12.0)),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(DateUtils.formatDate(data.date),
                                style: TextStyle(
                                    color: Colors.grey[500], fontSize: 12.0)),
                          )
                        ],
                      )
                    ],
                  ))),
          _buildImage(data.firstPic)
        ],
      ),
    );
  }

  buildMultiListItem(NewsItem data) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(data.title,
                  style: TextStyle(color: Colors.black, letterSpacing: 0.5))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildImage(data.firstPic),
              _buildImage(data.secondPic),
              _buildImage(data.thirdPic),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data.authorName,
                      style:
                          TextStyle(color: Colors.grey[500], fontSize: 12.0)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(DateUtils.formatDate(data.date),
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 12.0)),
                  )
                ],
              ))
        ],
      ),
    );
  }

  _buildImage(String image) {
    return CachedNetworkImage(
      placeholder: (context, url) => _buildPlaceImage(),
      imageUrl: image,
      width: imageWidth,
      height: imageHeight,
      fit: BoxFit.cover,
    );
  }

  _buildPlaceImage() {
    return Image.asset('images/place.jpg',
        width: imageWidth, height: imageHeight, fit: BoxFit.cover);
  }

  @override
  bool get wantKeepAlive => true;
}
