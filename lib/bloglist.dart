import 'package:deneme/http/httpservice.dart';
import 'package:deneme/models/BlogsModel.dart' as blogs;
import 'package:deneme/models/ScreenArguments.dart';
import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class BlogList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BlogListState();
}

class _BlogListState extends State {
  HttpService _service;
  Future<List<blogs.BlogsModel>> _bloglist;

  @override
  void initState() {
    _service = HttpService();
    _bloglist = getBlogList();
    super.initState();
  }

  Future<List<blogs.BlogsModel>> getBlogList() async {
    final _sonuc = await _service.getBlogList();
    return _sonuc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: Builder(
        builder: (context) => Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 10.0),
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 0,
                  ),
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(top: 50.0, right: 8.0),
                      decoration: const ShapeDecoration(
                        color: Color(0xffF0F3F5),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications_none,
                        ),
                        iconSize: 20,
                        onPressed: () {
                          Navigator.pushNamed(context, "/bildirimler");
                        },
                      )),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 50.0, right: 10.0),
                    decoration: const ShapeDecoration(
                      color: Color(0xffF0F3F5),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                      ),
                      iconSize: 20,
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    "Diyet Blog Yazıları",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffC85D72),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 0,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10.0, right: 8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.navigate_before,
                      ),
                      iconSize: 20,
                      onPressed: () {
                        Navigator.pushNamed(context, "/main");
                      },
                    )),
              ],
            ),
            Expanded(
              child: FutureBuilder(
                  future: _bloglist,
                  builder: (BuildContext context, AsyncSnapshot<List<blogs.BlogsModel>> snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      return Center(
                        child: Column(
                          children: [CircularProgressIndicator(), Text("ilk İstek 30sn Zaman Alabilir")],
                        ),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.done) {
                      return ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (BuildContext context, int index) {
                            blogs.BlogsModel item = snapshot.data[index];
                            return InkWell(
                              child: Row(
                                children: [
                                  Container(
                                    height: 140,
                                    width: MediaQuery.of(context).size.width * 0.94,
                                    padding: EdgeInsets.only(
                                      right: 10.0,
                                      top: 15.0,
                                    ),
                                    margin: EdgeInsets.only(
                                      top: 15.0,
                                      left: 10.0,
                                      right: 5.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: Image.network(
                                                "https://blooming-anchorage-42064.herokuapp.com" + item.image.url,
                                                width: 120,
                                                height: 101,
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item.title,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff4D565B),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                top: 15.0,
                                              ),
                                              constraints: BoxConstraints(maxWidth: 200),
                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                                              child: Text(
                                                item.content.substring(0, 120),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xff4D565B),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Detay",
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff4D565B),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, "/blogyazi1", arguments: ScreenArguments(item.id));
                              },
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider();
                          },
                          itemCount: snapshot.data.length);
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
