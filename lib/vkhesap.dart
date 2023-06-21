import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class VkHesap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VkHesapState();
}

class _VkHesapState extends State {
  final boyText = TextEditingController();
  final kiloText = TextEditingController();
  String sonuc;

  @override
  void initState() {
    sonuc = "";
    super.initState();
  }

  Hesapla(int boy, int kilo) {
    double boy_m = boy / 100;
    double hesapSonucu = kilo / (boy_m * boy_m);
    String snc = "";
    if (hesapSonucu < 18.5) {
      snc = "Zayıf";
    } else if (hesapSonucu >= 18.5 && hesapSonucu < 25) {
      snc = "Normal";
    } else if (hesapSonucu >= 25 && hesapSonucu < 30) {
      snc = "Kilolu";
    } else if (hesapSonucu >= 30 && hesapSonucu < 35) {
      snc = "Obez";
    } else {
      snc = "Ciddi Obez";
    }

    setState(() {
      sonuc = snc + " / " + hesapSonucu.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: Builder(
        builder: (context) => SingleChildScrollView(
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
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Text(
                      "Vücut Kitle Endeksi Hesaplama",
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.0, left: 10.0),
                        child: Image(
                          image: AssetImage("assets/images/tartihesap.png"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        constraints: BoxConstraints(maxWidth: 370),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                        child: TextField(
                          controller: boyText,
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Boyunuz',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        constraints: BoxConstraints(maxWidth: 370),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                        child: TextField(
                          controller: kiloText,
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Kilonuz',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        constraints: BoxConstraints(maxWidth: 370),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: 350,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffC85D72), // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () {
                                Hesapla(int.parse(boyText.text), int.parse(kiloText.text));
                                print(sonuc);
                              },
                              child: Text(' Hesapla'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Color(0xffFFFFFF), borderRadius: BorderRadius.all(Radius.circular(10))),
                        height: 50,
                        margin: EdgeInsets.only(
                          left: 10.0,
                          right: 5.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                            Text(
                              sonuc,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4D565B),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
