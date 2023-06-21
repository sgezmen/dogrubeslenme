import 'package:deneme/models/BlogsModel.dart' as blogs;
import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

import 'http/httpservice.dart';
import 'models/ScreenArguments.dart';

class BlogYazi1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BlogYazi1State();
}

class _BlogYazi1State extends State<BlogYazi1> {
  HttpService _service;
  Future<blogs.BlogsModel> _blog;
  ScreenArguments args;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    args = ModalRoute.of(context).settings.arguments as ScreenArguments;
    _service = HttpService();
    _blog = _service.getBlog(args.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //print(args.id.toString());

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
                      color: Color(0xffc85d72),
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
                        Navigator.pop(context);
                      },
                    )),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Row(
                    children: [
                      FutureBuilder(
                          future: _blog,
                          builder: (BuildContext context, AsyncSnapshot<blogs.BlogsModel> snapshot) {
                            if (snapshot.connectionState == ConnectionState.active) {
                              return Center(
                                child: Column(
                                  children: [CircularProgressIndicator(), Text("ilk İstek 30sn Zaman Alabilir")],
                                ),
                              );
                            }
                            if (snapshot.connectionState == ConnectionState.done) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 15.0,
                                          left: 10.0,
                                        ),
                                        child: Image.network(
                                          "https://blooming-anchorage-42064.herokuapp.com" + snapshot.data.image.url,
                                          width: MediaQuery.of(context).size.width * 0.94,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 15.0,
                                          left: 10.0,
                                        ),
                                        child: Text(
                                          snapshot.data.title,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                            top: 15.0,
                                            left: 10.0,
                                          ),
                                          child: ConstrainedBox(
                                            constraints: BoxConstraints(maxWidth: 350),
                                            child: Container(
                                              child: Text(
                                                snapshot.data.content,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xff4D565B),
                                                ),
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ],
                              );
                            }
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
