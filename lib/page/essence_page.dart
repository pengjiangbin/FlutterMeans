import 'package:flutter/material.dart';
import 'package:flutter_live/api/home_dao.dart';
import 'package:flutter_live/api/response/essence_response.dart';
import 'package:flutter_live/page/web_page.dart';

class EssencePage extends StatefulWidget {
  @override
  _EssencePageState createState() => _EssencePageState();
}

class _EssencePageState extends State<EssencePage> {
  final int pageSize = 20;
  int pageNo = 1;
  EssenceResponse essenceResponse;
  List<EssenceItem> essenceList = [];
  List<Widget> items = [];

  @override
  void initState() {
    super.initState();
    getEssenceData("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("精选"), centerTitle: true),
      body: ListView.separated(
          itemCount: essenceList.length,
          separatorBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              height: 1.0,
              color: Colors.grey[200],
            );
          },
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebPage(
                                title: essenceList[index].title,
                                url: essenceList[index].url,
                              )));
                },
                child: buildListItem(essenceList[index]));
          }),
    );
  }

  getEssenceData(String type) async {
    essenceResponse = await HomeDao.getEssenceData(pageSize, pageNo);
    essenceList = essenceResponse.result.list;
    setState(() {
      pageNo += 1;
    });
  }

  buildListItem(EssenceItem data) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(data.title,
              style: TextStyle(color: Colors.black, letterSpacing: 0.5)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(data.source,
                style: TextStyle(color: Colors.grey[500], fontSize: 12.0)),
          )
        ],
      ),
    );
  }
}
