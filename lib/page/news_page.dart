import 'package:flutter/material.dart';
import 'package:flutter_live/api/home_dao.dart';
import 'package:flutter_live/api/response/news_response.dart';
import 'package:flutter_live/util/date_utils.dart';
import 'package:flutter_live/util/screen_utils.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsResponse newsResponse;
  List<NewsItem> news = [];
  List<Widget> items = [];
  double imageWidth;
  double imageHeight;

  @override
  void initState() {
    super.initState();
    getHomeData();
  }

  @override
  Widget build(BuildContext context) {
    imageWidth = (ScreenUtils.getScreenWidth(context) - 32) / 3;
    imageHeight = imageWidth / 4 * 3;
    return ListView.separated(
        itemCount: news.length * 2,
        separatorBuilder: (context,index){
          return Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: 1.0,
            color: Colors.grey[200],
          );
        },
        itemBuilder: (context, index) {
            NewsItem item = news[index];
            if (item.thirdPic != null) {
              return buildMultiListItem(news[index]);
            } else {
              return buildSingleListItem(news[index]);
            }
        });
  }

  getHomeData() async {
    newsResponse = await HomeDao.getHomeData("top");
    news = newsResponse.result.data;
    for (int i = 0; i < news.length; i++) {}
    setState(() {});
  }

  buildSingleListItem(NewsItem data) {
    return Container(
      height: imageHeight + 16,
      padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
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
                      Text(data.title, style: TextStyle(color: Colors.black)),
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
          Image.network(
            data.firstPic,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }

  buildMultiListItem(NewsItem data) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(data.title, style: TextStyle(color: Colors.black))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.network(
                data.firstPic,
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
              Image.network(
                data.secondPic,
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
              Image.network(
                data.thirdPic,
                width: imageWidth,
                height: imageHeight,
                fit: BoxFit.cover,
              )
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
}
