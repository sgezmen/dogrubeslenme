import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:deneme/diyettariflist.dart';
import 'package:deneme/iletisim.dart';
import 'package:deneme/ipucu.dart';
import 'package:flutter/material.dart';
import 'package:deneme/hakkimizda.dart';
import 'package:deneme/mydrawer.dart';
import 'package:deneme/diyetlistesi.dart';
import 'package:deneme/gununyemegi.dart';
import 'package:deneme/bildirimler.dart';
import 'package:deneme/nohutsalatasi.dart';
import 'package:deneme/bloglist.dart';
import 'package:deneme/blogyazi1.dart';
import 'package:deneme/vkhesap.dart';
import 'package:deneme/ebmhesap.dart';
import 'package:deneme/hesaplamalar.dart';
import 'package:deneme/bmhesap.dart';
import 'package:deneme/kbmhesap.dart';
import 'package:deneme/sorucevap.dart';
import 'package:deneme/karisimlist.dart';
import 'package:deneme/karisimyazi1.dart';
import 'package:deneme/egzersiz.dart';
import 'package:deneme/chart.dart';

import 'database/db_helper.dart';
import 'models/SozlerModel.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Homepage(),
    initialRoute: '/',
    routes: {
      '/chart': (context) => Chart(),
      '/egzersiz': (context) => Egzersiz(),
      '/karisimyazi1': (context) => KarisimYazi1(),
      '/karisimlist': (context) => KarisimList(),
      '/sorucevap': (context) => Sorucevap(),
      '/kbmhesap': (context) => KbmHesap(),
      '/bmhesap': (context) => Bmhesap(),
      '/hesaplamalar': (context) => Hesaplamalar(),
      '/ebmhesap': (context) => EbmHesap(),
      '/vkhesap': (context) => VkHesap(),
      '/blogyazi1': (context) => BlogYazi1(),
      '/bloglist': (context) => BlogList(),
      '/nohutsalatasi': (context) => NohutSalatasi(),
      '/iletisim': (context) => Contact(),
      '/ipucu': (context) => Ipucu(),
      '/diyettariflist': (context) => DiyetTarifList(),
      '/bildirimler': (context) => Bildirimler(),
      '/hakkimizda': (context) => Hakkimizda(),
      '/diyetlistesi': (context) => DiyetListesi(),
      '/gununyemegi': (context) => GununYemegi(),
      '/main': (context) => Homepage(),
    },
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  DbHelper _dbHelper;
  @override
  void initState() {
    _dbHelper = DbHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: Builder(
        builder: (context) => SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Column(
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: InkWell(
                      child: Image(
                        width: MediaQuery.of(context).size.width * 0.94,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/slider.png"),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/diyettariflist");
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Color(0xffCFD8DD), borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.94,
                    margin: EdgeInsets.only(
                      top: 15.0,
                    ),
                    padding: EdgeInsets.only(top: 18.0, left: 20.0),
                    child: SizedBox(
                      width: 250.0,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4D565B),
                        ),
                        child: FutureBuilder(
                          future: _dbHelper.getSozler(),
                          builder: (BuildContext context, AsyncSnapshot<List<SozlerModel>> snapshot) {
                            if (!snapshot.hasData) return CircularProgressIndicator();
                            if (snapshot.data.isEmpty) return Text("Özlü Söz Bulunamadı");
                            List<SozlerModel> sozler = snapshot.data;
                            return AnimatedTextKit(
                              animatedTexts: sozler.map((e) {
                                return FadeAnimatedText(e.soz);
                              }).toList(),
                              pause: const Duration(milliseconds: 2000),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffC9DEDD), borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/kalorihesapla.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Hesaplamalar",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/hesaplamalar");
                    },
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        left: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/diyettarifleri.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Diyet Tarifleri",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/diyettariflist");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffE6DDF0), borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        right: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/diyetblog.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Diyet Blog",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/bloglist");
                    },
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffD2D1DA), borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        left: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/diyetlistesi.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Diyet Listesi",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/diyetlistesi");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffF0F0F0), borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        right: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/gununyemegi.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Günün Yemeği",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/gununyemegi");
                    },
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffE8F6F6), borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        left: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/ipuclari.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "İpuçları",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/ipucu");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffE6DDF0), borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        right: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/karisimlar.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Karışımlar",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/karisimlist");
                    },
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        left: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/sorucevap.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Soru - Cevap",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/sorucevap");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  } //Widget
}
