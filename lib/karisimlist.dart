import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';



class KarisimList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _KarisimListState();
}

class _KarisimListState extends State {
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
                    "Karışım Tarifleri",
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    children:[
                      InkWell(
                        child:   Row(
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width * 0.94,
                              padding: EdgeInsets.only(right: 10.0, top:15.0, ),
                              margin: EdgeInsets.only(
                                top: 15.0,
                                left: 10.0,
                                right: 5.0,
                              ),
                              child:
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(padding: EdgeInsets.only(right: 10.0),
                                        child:Image(
                                          image:
                                          AssetImage("assets/images/karisim1.png"),
                                        ),
                                      )

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Elmalı tarçınlı detoks içeceği",  style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4D565B),
                                      ),),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 15.0,
                                        ),
                                        constraints: BoxConstraints(maxWidth: 200),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.0)),
                                        child:Text("Detokstan bahsediliyorsa tarçın ve elma kesinlikle en popüler malzemeler arasındadır...",                     style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),),

                                      ),
                                      Text("Detay",  textAlign: TextAlign.end, style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ],

                                  ),
                                ],

                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/karisimyazi1");
                        },
                      ),
                      InkWell(
                        child:   Row(
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width * 0.94,
                              padding: EdgeInsets.only(right: 10.0, top:15.0, ),
                              margin: EdgeInsets.only(
                                left: 10.0,
                                right: 5.0,
                              ),
                              child:
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(padding: EdgeInsets.only(right: 10.0),
                                        child:Image(
                                          image:
                                          AssetImage("assets/images/karisim1.png"),
                                        ),
                                      )

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Elmalı tarçınlı detoks içeceği",  style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4D565B),
                                      ),),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 15.0,
                                        ),
                                        constraints: BoxConstraints(maxWidth: 200),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.0)),
                                        child:Text("Detokstan bahsediliyorsa tarçın ve elma kesinlikle en popüler malzemeler arasındadır...",                     style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),),

                                      ),
                                      Text("Detay",  textAlign: TextAlign.end, style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ],

                                  ),
                                ],

                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/karisimyazi1");
                        },
                      ),
                      InkWell(
                        child:   Row(
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width * 0.94,
                              padding: EdgeInsets.only(right: 10.0, top:15.0, ),
                              margin: EdgeInsets.only(
                                left: 10.0,
                                right: 5.0,
                              ),
                              child:
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(padding: EdgeInsets.only(right: 10.0),
                                        child:Image(
                                          image:
                                          AssetImage("assets/images/karisim1.png"),
                                        ),
                                      )

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Elmalı tarçınlı detoks içeceği",  style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4D565B),
                                      ),),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 15.0,
                                        ),
                                        constraints: BoxConstraints(maxWidth: 200),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.0)),
                                        child:Text("Detokstan bahsediliyorsa tarçın ve elma kesinlikle en popüler malzemeler arasındadır...",                     style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),),

                                      ),
                                      Text("Detay",  textAlign: TextAlign.end, style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ],

                                  ),
                                ],

                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/karisimyazi1");
                        },
                      ),





                    ]
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
