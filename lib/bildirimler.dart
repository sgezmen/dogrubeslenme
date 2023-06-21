import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class Bildirimler extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BildirimlerState();
}

class _BildirimlerState extends State {
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
                padding: EdgeInsets.only(bottom: 15.0),
                scrollDirection: Axis.vertical,
                child: Column(
                    children:[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F3F5),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 110,
                            width: MediaQuery.of(context).size.width * 0.94,
                            padding: EdgeInsets.only(right: 10.0, top:15.0, bottom: 15.0,),
                            margin: EdgeInsets.only(
                              top: 15.0,
                            ),
                            child:Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      color: Colors.black,
                                      alignment: Alignment.topLeft,
                                      icon: Icon(
                                        Icons.notifications_none,
                                      ),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("10/04/2021",  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4D565B),
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15.0,
                                      ),
                                      constraints: BoxConstraints(maxWidth: 270),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",                     style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F3F5),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 110,
                            width: MediaQuery.of(context).size.width * 0.94,
                            padding: EdgeInsets.only(right: 10.0, top:15.0, bottom: 15.0,),
                            margin: EdgeInsets.only(
                              top: 15.0,
                            ),
                            child:Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      color: Colors.black,
                                      alignment: Alignment.topLeft,
                                      icon: Icon(
                                        Icons.notifications_none,
                                      ),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("10/04/2021",  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4D565B),
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15.0,
                                      ),
                                      constraints: BoxConstraints(maxWidth: 270),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",                     style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F3F5),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 110,
                            width: MediaQuery.of(context).size.width * 0.94,
                            padding: EdgeInsets.only(right: 10.0, top:15.0, bottom: 15.0,),
                            margin: EdgeInsets.only(
                              top: 15.0,
                            ),
                            child:Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      color: Colors.black,
                                      alignment: Alignment.topLeft,
                                      icon: Icon(
                                        Icons.notifications_none,
                                      ),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("10/04/2021",  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4D565B),
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15.0,
                                      ),
                                      constraints: BoxConstraints(maxWidth: 270),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",                     style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F3F5),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 110,
                            width: MediaQuery.of(context).size.width * 0.94,
                            padding: EdgeInsets.only(right: 10.0, top:15.0, bottom: 15.0,),
                            margin: EdgeInsets.only(
                              top: 15.0,
                            ),
                            child:Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      color: Colors.black,
                                      alignment: Alignment.topLeft,
                                      icon: Icon(
                                        Icons.notifications_none,
                                      ),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("10/04/2021",  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4D565B),
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15.0,
                                      ),
                                      constraints: BoxConstraints(maxWidth: 270),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",                     style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F3F5),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 110,
                            width: MediaQuery.of(context).size.width * 0.94,
                            padding: EdgeInsets.only(right: 10.0, top:15.0, bottom: 15.0,),
                            margin: EdgeInsets.only(
                              top: 15.0,
                            ),
                            child:Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      color: Colors.black,
                                      alignment: Alignment.topLeft,
                                      icon: Icon(
                                        Icons.notifications_none,
                                      ),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("10/04/2021",  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4D565B),
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15.0,
                                      ),
                                      constraints: BoxConstraints(maxWidth: 270),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",                     style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F3F5),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 110,
                            width: MediaQuery.of(context).size.width * 0.94,
                            padding: EdgeInsets.only(right: 10.0, top:15.0, bottom: 15.0,),
                            margin: EdgeInsets.only(
                              top: 15.0,
                            ),
                            child:Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      color: Colors.black,
                                      alignment: Alignment.topLeft,
                                      icon: Icon(
                                        Icons.notifications_none,
                                      ),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("10/04/2021",  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4D565B),
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15.0,
                                      ),
                                      constraints: BoxConstraints(maxWidth: 270),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",                     style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F3F5),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 110,
                            width: MediaQuery.of(context).size.width * 0.94,
                            padding: EdgeInsets.only(right: 10.0, top:15.0, bottom: 15.0,),
                            margin: EdgeInsets.only(
                              top: 15.0,
                            ),
                            child:Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      color: Colors.black,
                                      alignment: Alignment.topLeft,
                                      icon: Icon(
                                        Icons.notifications_none,
                                      ),
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("10/04/2021",  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4D565B),
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 15.0,
                                      ),
                                      constraints: BoxConstraints(maxWidth: 270),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0)),
                                      child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",                     style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff4D565B),
                                      ),),
                                    ),

                                  ],
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


