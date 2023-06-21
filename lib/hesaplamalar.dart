import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class Hesaplamalar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HesaplamalarState();
}

class _HesaplamalarState extends State {
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
                    "Hesaplamalar",
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
            Row(
              children: [
                InkWell(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(color: Color(0xffF0F0F0), borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: MediaQuery.of(context).size.width * 0.94,
                    padding: EdgeInsets.only(
                      left: 15.0,
                      top: 15.0,
                      bottom: 5.0,
                    ),
                    margin: EdgeInsets.only(
                      top: 15.0,
                      left: 10.0,
                      right: 5.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 5.0,
                          ),
                          child: Text(
                            "Vücut Kitle Endeksi Hesaplama",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                        ),
                        Text(
                          "Obezite hesaplamada kilonuzun, boy değerinizin karesine bölünmesiyle (kg/m²) hesaplanan Vücut Kitle İndeksi (VKİ) değeri kullanılır ve Dünya Sağlık Örgütü'nün referans aralığı temel alınır.\n\n"
                              "Detay >\n\n",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff4D565B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/vkhesap");
                  },
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(color: Color(0xffF0F0F0), borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: MediaQuery.of(context).size.width * 0.94,
                    padding: EdgeInsets.only(
                      left: 15.0,
                      top: 15.0,
                      bottom: 5.0,
                    ),
                    margin: EdgeInsets.only(
                      top: 15.0,
                      left: 10.0,
                      right: 5.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 5.0,
                          ),
                          child: Text(
                            "Bazal Metabolizma Hızı Hesaplama",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                        ),
                        Text(
                          "Bazal metabolizma hızı, kişinin vücudunun temel yaşamsal fonksiyonları yerine getirmek için ihtiyaç duyduğu minimum kalori miktarına karşılık gelir ve kişiden kişiye farklılık gösterir.\n\n"
                              "Detay >\n\n",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff4D565B),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/bmhesap");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
