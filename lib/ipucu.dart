import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class Ipucu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IpucuState();
}

class _IpucuState extends State {
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
                    "İpuçları",
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
                padding: EdgeInsets.only(bottom: 15.0),
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
                                      AssetImage("assets/images/ipucu1.png"),
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
                                  "1- Düzenli Uyku Uyuyun",
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
                                        "Düzenli uyku kilo vermenin temelidir. Vücudunuz için yeterli olmayan uyku saatleri ertesi gün vücudunuzda ödem birikmesine neden olur. Bu durumda tartı üstünde kilonuzu fazla görürsünüz. Ayrıca yapılan bilimsel çalışmalar gece geç saatlere kadar oturanlar bireylerin daha fazla kalori aldığını ve uzun vadeli daha fazla kilo aldığı görülmüştür.",
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
                                  AssetImage("assets/images/ipucu2.png"),
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
                                  "2- Yeşil çay ve bol su için",
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
                                        "Yeşil çay içerisinde bulunan kateşin ile hem metabolizma hızlandırıcı etkisi hem de bağışıklık sistemini güçlendirici etkisi bulunmaktadır. Yeşil çay bu etkisi ile hem iyi bir içecek alternatifidir hem de kilo vermenize yardımcı olacaktır. Su hem vücudunuzda şişkinlik hissi veren hem de kilonuzun tartı üzerinde fazla çıkmasına neden olan ödemin dışarı atılması için temel içecektir. Aynı zamanda yağın vücuttan atılması için gereklidir. Günde ortalama 2-2,5 litre su içmeniz gereklidir. Eğer su içme alışkanlığınız yok ise bunun zaman içerisinde oluşacağını unutmayın ve su içmekten hemen vazgeçmeyin.",
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
