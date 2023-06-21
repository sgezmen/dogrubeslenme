import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class DiyetListesi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiyetListesiState();
}

class _DiyetListesiState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: Builder(
        builder: (context) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                Container(
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
                      onPressed: () {},
                    )),
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
                    "Diyet Listesi",
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
            DefaultTabController(
              length: 7,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 12.0),
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.black38,
                    tabs: [
                      Tab(text: 'Pazartesi'),
                      Tab(text: 'Salı'),
                      Tab(text: 'Çarşamba'),
                      Tab(text: 'Perşembe'),
                      Tab(text: 'Cuma'),
                      Tab(text: 'Cumartesi'),
                      Tab(text: 'Pazar'),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 204,
                    child: TabBarView(
                      children: [
                        Container(
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.all(Radius.circular(10))),
                          width: MediaQuery.of(context).size.width * 0.94,
                          padding: EdgeInsets.only(
                            right: 10.0,
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          margin: EdgeInsets.only(
                            top: 0.0,
                            left: 10.0,
                            right: 5.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Sabah",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
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
                                          "Öğle",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Akşam",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.all(Radius.circular(10))),
                          width: MediaQuery.of(context).size.width * 0.94,
                          padding: EdgeInsets.only(
                            right: 10.0,
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          margin: EdgeInsets.only(
                            top: 0.0,
                            left: 10.0,
                            right: 5.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Sabah",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
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
                                          "Öğle",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Akşam",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.all(Radius.circular(10))),
                          width: MediaQuery.of(context).size.width * 0.94,
                          padding: EdgeInsets.only(
                            right: 10.0,
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          margin: EdgeInsets.only(
                            top: 0.0,
                            left: 10.0,
                            right: 5.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Sabah",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
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
                                          "Öğle",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Akşam",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.all(Radius.circular(10))),
                          width: MediaQuery.of(context).size.width * 0.94,
                          padding: EdgeInsets.only(
                            right: 10.0,
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          margin: EdgeInsets.only(
                            top: 0.0,
                            left: 10.0,
                            right: 5.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Sabah",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
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
                                          "Öğle",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Akşam",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.all(Radius.circular(10))),
                          width: MediaQuery.of(context).size.width * 0.94,
                          padding: EdgeInsets.only(
                            right: 10.0,
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          margin: EdgeInsets.only(
                            top: 0.0,
                            left: 10.0,
                            right: 5.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Sabah",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
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
                                          "Öğle",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Akşam",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.all(Radius.circular(10))),
                          width: MediaQuery.of(context).size.width * 0.94,
                          padding: EdgeInsets.only(
                            right: 10.0,
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          margin: EdgeInsets.only(
                            top: 0.0,
                            left: 10.0,
                            right: 5.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Sabah",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
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
                                          "Öğle",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Akşam",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 10,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.all(Radius.circular(10))),
                          width: MediaQuery.of(context).size.width * 0.94,
                          padding: EdgeInsets.only(
                            right: 10.0,
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          margin: EdgeInsets.only(
                            top: 0.0,
                            left: 10.0,
                            right: 5.0,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Sabah",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
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
                                          "Öğle",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 165,
                                  decoration: BoxDecoration(color: Color(0xffF0F3F5), borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                          "Akşam",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff4D565B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "- 50 gram Süzme Peynir\n\n"
                                            "- 3 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                            "- 2 adet salatalık(küp kesilmiş)\n\n"
                                            "- 2 adet Tam Buğday Ekmeği\n\n",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
