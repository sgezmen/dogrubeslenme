import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class KbmHesap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _KbmHesapState();
}

class _KbmHesapState extends State {
  final boyText = TextEditingController();
  final kiloText = TextEditingController();
  final yasText = TextEditingController();
  String sonuc;

  @override
  void initState() {
    sonuc = "";
    super.initState();
  }

  Hesapla(int boy, int kilo, int yas,) {
    double boy_m = (boy * 1.85);
    double kilo_m = (kilo * 9.56);
    double yas_m = (yas * 4.68);
    double hesapSonucu = 655.1 + kilo_m + boy_m - yas_m;
    String snc = "";

    setState(() {
      sonuc = "Bazal Metabolizma Hızınız" + " " + hesapSonucu.toStringAsFixed(2);
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
                      "Kadın Bazal Metabolizma Hızı",
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
                          image: AssetImage("assets/images/mhizi.png"),
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
                        padding: EdgeInsets.all(10.0),
                        constraints: BoxConstraints(maxWidth: 370),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
                        child: TextField(
                          controller: yasText,
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Yaşınız',
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
                                Hesapla(int.parse(boyText.text), int.parse(kiloText.text), int.parse(yasText.text));
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
