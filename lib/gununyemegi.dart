import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class GununYemegi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GununYemegiState();
}

class _GununYemegiState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    "Bildirimler",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize:18,  color: Color(0xffC85D72),),
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
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 15.0,
                              left: 10.0,
                            ),
                            child: Image(
                              width: MediaQuery.of(context).size.width * 0.94,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/gunlukyemek.png"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15.0,),
                            constraints: BoxConstraints(maxWidth: 270),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0)),
                            child:Text("Nar Ekşili Nohut Salatası Tarifi",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F0F0),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 75,
                            width: 168,
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
                                  "Hazırlama Süresi",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                                Text(
                                  "20 Dakika",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F0F0),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 75,
                            width: 168,
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
                                  "Kalorisi",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                                Text(
                                  "344 Kcal",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
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
                      Row(
                        children: [
                          Container(
                            color: Color(0xffffffff),
                            width: MediaQuery.of(context).size.width * 0.94,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              right: 5.0,
                              top:15.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Malzemeler",  style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4D565B),
                                ),),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                  ),
                                  constraints: BoxConstraints(maxWidth: 500),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child:Text("- 250 gram haşlanmış nohut\n\n"
                                      "- 10 adet cherry domates(ortadan ikiye kesilmiş)\n\n"
                                      "- 2 adet salatalık(küp kesilmiş)\n\n"
                                      "- 1/2 bağ dereotu(kıyılmış)\n\n"
                                      "- 1/2 bağ taze nane(kıyılmış)\n\n"
                                      "- 1/2 bağ taze soğan(ince ince kesilmiş)\n\n", style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff4D565B),
                                  ),),
                                ),
                                Text("Sosu İçin",  style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4D565B),
                                ),),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                  ),
                                  constraints: BoxConstraints(maxWidth: 500),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child:Text("- 1/2 çay bardağı zeytinyağı\n\n"
                                      "- 1/2 adet limon suyu\n\n"
                                      "- 4 yemek kaşığı nar ekşisi\n\n"
                                      "- 1/2 çay kaşığı tuz (azaltıp arttırılabilir)\n\n", style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff4D565B),
                                  ),),
                                ),
                                Text("Yapılışı",  style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4D565B),
                                ),),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                  ),
                                  constraints: BoxConstraints(maxWidth: 500),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child:Text("1) Haşlanmış nohut, cherry domates, salatalık ve tüm yeşillikleri bir kaseye alıp malzemeleri ezmeden birbirine karışacak şekilde harmanlayın.\n\n"
                                      "2) Ayrı bir kasede zeytinyağı, limon suyu ve nar ekşisini tuzu ekledikten sonra homojen bir karışım elde edene kadar çırpın.\n\n"
                                      "3) Sosu salatanın içine ekleyip karıştırın.\n\n"
                                      "4) Kaselere bölüştürüp servis edin.\n\n", style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff4D565B),
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ],
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

