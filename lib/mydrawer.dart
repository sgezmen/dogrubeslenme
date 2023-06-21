import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              height: 90,
              color: Colors.white,
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0),
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Image(
                        image: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Anasayfa'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Hesaplamalar'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/hesaplamalar");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Diyet Yemek Tarifleri'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/diyettariflist");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Diyet Listesi'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/diyetlistesi");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Diyet Blog'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/bloglist");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Günün Yemeği'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/gununyemegi");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('İpuçları'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/ipucu");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Bildirimler'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/bildirimler");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Hakkımızda'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/hakkimizda");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Bazal Hesaplama'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/ebmhesap");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('Egzersizler'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/egzersiz");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('İstatistikler'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/chart");
              },
            ),
            ListTile(
              leading: Icon(Icons.add_rounded ),
              title: Text('İletişim'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.pushNamed(context, "/iletisim");
              },
            ),
          ],
        ),
      ),
    );
  }
}
