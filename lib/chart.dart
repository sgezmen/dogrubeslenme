import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChartState();
}

class _ChartState extends State {
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
                    "İstatistikler",
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
                                  AssetImage("assets/images/chartfoto.jpg"),
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
                                  "2019 Türkiye Sağlık Araştırması Sonuçları",
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
                                        "Obez oranı: %17, Obez Öncesi: %40, Normal Kilolu: %40, Düşük Kilolu: %3 oalrak istatistiklere yansımıştır.",
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
            Expanded(child: PieChart(
                PieChartData(centerSpaceRadius: 80, sections: [
                  PieChartSectionData(
                    color: const Color(0xff2f8a13),
                    value: 17,
                    title: '17%',
                    radius: 17,
                    titleStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff)),
                  ),
                  PieChartSectionData(
                    color: const Color(0xffffc712),
                    value: 40,
                    title: '40%',
                    radius: 40,
                    titleStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff)),
                  ),
                  PieChartSectionData(
                    color: const Color(0xffce3201),
                    value: 40,
                    title: '40%',
                    radius: 40,
                    titleStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff)),
                  ),
                  PieChartSectionData(
                    color: const Color(0xff0272a1),
                    value: 3,
                    title: '3%',
                    radius: 3,
                    titleStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff000000)),
                  )

                ])),),
            

          ],
        ),
      ),
    );
  }
}
