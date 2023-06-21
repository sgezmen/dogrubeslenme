import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class KarisimYazi1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _KarisimYazi1State();
}

class _KarisimYazi1State extends State {
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
                        Navigator.pushNamed(context, "/main");
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 15.0,
                                  left: 10.0,
                                ),
                                child: Image(
                                  width:
                                      MediaQuery.of(context).size.width * 0.94,
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/karisimyazi1.png"),
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
                                  "Elmalı tarçınlı detoks içeceği",
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
                                        "Detokstan bahsediliyorsa tarçın ve elma kesinlikle en popüler malzemeler arasındadır. Sağlıklı yaşam, kilo kontrolü, vücudu toksinlerden arındırma gibi konular söz konusu olduğunda elma ve tarçın ikilisi dünya çapında bir fenomene dönüşmüştür. Elmalı, tarçınlı detoks içeceğinin sadece lezzetli olması değil, ayrıca birçok açıdan da sağlığa yararlı olması da çok önemlidir. Elmadaki antiseptikler ve antioksidanlar, kanser, hipertansiyon, diyabet ve kalp hastalıkları gelişme riskini azaltmaya yardımcı olmaktadır. Ayrıca tarçının da sağlığa çok faydalı olduğunu bilinmektedir. İkisi bir araya gelince de harika bir detoks içeceği ortaya çıkıyor.",
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
                      ),
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
