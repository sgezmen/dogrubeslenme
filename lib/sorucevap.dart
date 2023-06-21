import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';
import 'package:getwidget/getwidget.dart';

class Sorucevap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SorucevapState();
}

class _SorucevapState extends State {
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
                    "Soru-Cevap",
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
            GFAccordion(
                title: 'İdeal Kilo Nedir?',
                content: 'Vücut ağırlığının sınıflandırılmasında kullandığımız Beden Kitle İndeksi (kısaca BKI ) dediğimiz bir tabir vardır. Kilonuzu, boyunuzun metre cinsinden karesine bölerek hesaplanan bir belirteç diye düşünün. Çıkan sonuç 20-24,5 arasında ise vücut ağırlığına bağlı riskler yönünden sağlıklı aralıktasınız. Çıkan sonuç aralıktan daha büyük bir değer ise adım adım şişmanlığa doğru gittiğinizi düşünebilirsiniz. Bu değer 30 ve üstünü göstermeye başladığında ise artık Obeziteden söz etmeye başlıyoruz.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: 'İdeal Kilo Nedir?',
                content: 'Vücut ağırlığının sınıflandırılmasında kullandığımız Beden Kitle İndeksi (kısaca BKI ) dediğimiz bir tabir vardır. Kilonuzu, boyunuzun metre cinsinden karesine bölerek hesaplanan bir belirteç diye düşünün. Çıkan sonuç 20-24,5 arasında ise vücut ağırlığına bağlı riskler yönünden sağlıklı aralıktasınız. Çıkan sonuç aralıktan daha büyük bir değer ise adım adım şişmanlığa doğru gittiğinizi düşünebilirsiniz. Bu değer 30 ve üstünü göstermeye başladığında ise artık Obeziteden söz etmeye başlıyoruz.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: 'Göbeğimi Eritmek İçin Ne Yapmalıyım?',
                content: 'Size özel hazırlanmış sağlıklı bir beslenme programı, yağ dokularınızdan kaybederek kilo vermenizi sağlar. Ve bu kayıplar en çok depo yağ hangi bölgede ise daha çok o bölgeden oluşur. Fazla yağlanma göbek bölgesinde ise yağ kaybı da en çok oradan olacaktır. Size özel diyet ile yağlılığını azalttığınız vücudunuzun, karın kaslarını çalıştıracak egzersizler yaparak form kazanmasını sağlayıp göbeğinizin sizin deyiminizle eridiğini görmeniz mümkün. Göbek eriten, basen eriten, bacak incelten bir besin maalesef yok.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: 'Şekeri Tüketmeli Miyim?',
                content: 'Şu çaya atılan ilave şeker ise sorduğunuz hiç mi hiç ihtiyacınız yok.  Şeker rafine karbonhidrat dediğimiz bir karbonhidrat. Vücudun karbonhidrata ihtiyacı olduğu doğrudur. Ama sağlıklı olanı kompleks karbonhidratlara. Vücudun şeker ihtiyacını biz zaten yediğimiz ekmekten, meyveden, çorbadan ve kuru baklagillerden karşılıyoruz. Şeker ya da şeker ilaveli bir besin tüketimin azaltmak / kaldırmak sizi sağlıklı yarınlara bir adım daha yaklaştırır.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: 'Göbeğimi Eritmek İçin Ne Yapmalıyım?',
                content: 'Size özel hazırlanmış sağlıklı bir beslenme programı, yağ dokularınızdan kaybederek kilo vermenizi sağlar. Ve bu kayıplar en çok depo yağ hangi bölgede ise daha çok o bölgeden oluşur. Fazla yağlanma göbek bölgesinde ise yağ kaybı da en çok oradan olacaktır. Size özel diyet ile yağlılığını azalttığınız vücudunuzun, karın kaslarını çalıştıracak egzersizler yaparak form kazanmasını sağlayıp göbeğinizin sizin deyiminizle eridiğini görmeniz mümkün. Göbek eriten, basen eriten, bacak incelten bir besin maalesef yok.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: 'Şekeri Tüketmeli Miyim?',
                content: 'Şu çaya atılan ilave şeker ise sorduğunuz hiç mi hiç ihtiyacınız yok.  Şeker rafine karbonhidrat dediğimiz bir karbonhidrat. Vücudun karbonhidrata ihtiyacı olduğu doğrudur. Ama sağlıklı olanı kompleks karbonhidratlara. Vücudun şeker ihtiyacını biz zaten yediğimiz ekmekten, meyveden, çorbadan ve kuru baklagillerden karşılıyoruz. Şeker ya da şeker ilaveli bir besin tüketimin azaltmak / kaldırmak sizi sağlıklı yarınlara bir adım daha yaklaştırır.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
          ],
        ),
      ),
    );
  }
}
