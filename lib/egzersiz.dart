import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class Egzersiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EgzersizState();
}

class _EgzersizState extends State {
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
                    "Egzersizler",
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    final snackBar = SnackBar(content: Text('3 Set x 10 Tekrar Yapılacak'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, // handle your image tap here
                  child: Image.asset(
                    'assets/images/kopru.png',
                    width: MediaQuery.of(context).size.width * 0.94,
                    fit: BoxFit.cover, // this is the solution for border
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onDoubleTap: () {
                    final snackBar = SnackBar(content: Text('3 Set x 10 Tekrar Yapılacak'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, // handle your image tap here
                  child: Image.asset(
                    'assets/images/ellerdizlere.png',
                    width: MediaQuery.of(context).size.width * 0.94,
                    fit: BoxFit.cover, // this is the solution for border
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onLongPress: () {
                    final snackBar = SnackBar(content: Text('3 Set x 10 Tekrar Yapılacak'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, // handle your image tap here
                  child: Image.asset(
                    'assets/images/dizlergoguse.png',
                    width: MediaQuery.of(context).size.width * 0.94,
                    fit: BoxFit.cover, // this is the solution for border
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTapCancel: () {
                    final snackBar = SnackBar(content: Text('3 Set x 10 Tekrar Yapılacak'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, // handle your image tap here
                  child: Image.asset(
                    'assets/images/bacakkaslara.png',
                    width: MediaQuery.of(context).size.width * 0.94,
                    fit: BoxFit.cover, // this is the solution for border
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
